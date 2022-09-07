import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/data/models/task.dart';
import 'package:todo/domain/analytic_service.dart';
import 'package:todo/domain/device_info_repository.dart';
import 'package:todo/domain/revision_repository.dart';
import 'package:todo/domain/task.dart';
import 'package:todo/domain/task_repository.dart';
import 'package:todo/domain/tasks_list.dart';
import 'package:todo/utils/extensions.dart';
import 'package:todo/utils/priority.dart';
import 'package:todo/utils/remote_request_utils.dart';
import 'package:uuid/uuid.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

class EditAddTaskBloc extends Bloc<EditAddTaskEvent, EditAddTaskState> {
  final TasksRepository _localStorageTasksRepository;
  final DeviceInfoRepository _deviceInfo;
  final CreateTasksListRepository _createTasksListRepository;
  final UpdateTaskRepository _updateTaskRepository;
  final DeleteTaskRepository _deleteTaskRepository;
  final RevisionRepository _revisionRepository;
  final AnalyticsService _analyticsService;

  bool _internetConnection = true;

  EditAddTaskBloc({
    required OnlyTaskModel? initialTask,
    required CreateTasksListRepository createTasksListRepository,
    required RevisionRepository revisionRepository,
    required UpdateTaskRepository updateTaskRepository,
    required DeleteTaskRepository deleteTaskRepository,
    required DeviceInfoRepository deviceInfo,
    required TasksRepository localStorageTasksRepository,
    required AnalyticsService analyticsService,
  })  : _localStorageTasksRepository = localStorageTasksRepository,
        _updateTaskRepository = updateTaskRepository,
        _analyticsService = analyticsService,
        _revisionRepository = revisionRepository,
        _createTasksListRepository = createTasksListRepository,
        _deleteTaskRepository = deleteTaskRepository,
        _deviceInfo = deviceInfo,
        super(
          EditAddTaskState(
            initialTask: initialTask,
            title: initialTask?.text ?? '',
            importance: initialTask?.importance,
            deadline: initialTask?.deadline,
          ),
        ) {
    on<EditTaskTitleChanged>(_onEditTaskTitle);
    on<EditTaskImportanceChanged>(_onEditTaskImportance);
    on<EditTaskSubmitted>(_onEditTaskSubmitted);
    on<EditTaskDeadlineChanged>(_onEditTaskDeadline);
    on<EditTaskDeleted>(_onDeleteTask);
  }

  void emitFailureInternetState(Emitter<EditAddTaskState> emit) {
    _internetConnection = false;
    emit(
      state.copyWith(
        status: EditAddTaskStatus.failedInternetCollection,
      ),
    );
  }

  void emitFailureState(Emitter<EditAddTaskState> emit) {
    emit(
      state.copyWith(
        status: EditAddTaskStatus.failure,
      ),
    );
  }

  void _onEditTaskTitle(
    EditTaskTitleChanged event,
    Emitter<EditAddTaskState> emit,
  ) {
    emit(
      state.copyWith(title: event.title),
    );
  }

  void _onEditTaskImportance(
    EditTaskImportanceChanged event,
    Emitter<EditAddTaskState> emit,
  ) {
    emit(
      state.copyWith(importance: event.importance),
    );
  }

  void _onEditTaskDeadline(
    EditTaskDeadlineChanged event,
    Emitter<EditAddTaskState> emit,
  ) {
    final deadline = event.deadline != null
        ? event.deadline!.millisecondsSinceEpoch ~/ 1000
        : null;
    emit(state.copyWith(deadline: deadline));
  }

  Future<void> _onEditTaskSubmitted(
    EditTaskSubmitted event,
    Emitter<EditAddTaskState> emit,
  ) async {
    final int nowTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    emit(state.copyWith(status: EditAddTaskStatus.loading));
    final task = (state.initialTask ??
            OnlyTaskModel(
              text: '',
              createdAt: nowTime,
              lastUpdatedBy: await _deviceInfo.getInfo(),
              changedAt: nowTime,
              deadline: null,
              done: false,
              id: const Uuid().v4(),
            ))
        .copyWith(
      text: state.title,
      importance: state.importance ?? Priority.basic.toShortString(),
      deadline: state.deadline,
    );
    try {
      await _localStorageTasksRepository.saveTask(task);
      if (state.isNewTodo) {
        await _analyticsService.createTask(id: task.id);
      } else {
        await _analyticsService.updateTask(id: task.id);
      }
      await _createOrUpdateTask(task, emit);
      emit(state.copyWith(status: EditAddTaskStatus.success));
    } catch (e) {
      emitFailureState(emit);
    }
  }

  Future<void> _createOrUpdateTask(
    OnlyTaskModel task,
    Emitter<EditAddTaskState> emit,
  ) async {
    try {
      if (_internetConnection) {
        final revision = _revisionRepository.get();
        final requestTask = TaskRequestModel(element: task);
        final extraHeaders = RemoteRequestUtils.createRevisionHeader(revision);
        if (state.isNewTodo) {
          final response = await _createTasksListRepository
              .post(
                requestTask,
                extraHeaders: extraHeaders,
              )
              .timeout(
                RemoteRequestUtils.timeOutDuration,
                onTimeout: RemoteRequestUtils.throwTimeOutInternetConnection,
              );
          await _revisionRepository.set(response.revision);
        } else {
          final response = await _updateTaskRepository
              .put(
                requestTask,
                id: task.id,
                extraHeaders: extraHeaders,
              )
              .timeout(
                RemoteRequestUtils.timeOutDuration,
                onTimeout: RemoteRequestUtils.throwTimeOutInternetConnection,
              );
          await _revisionRepository.set(response.revision);
        }
      }
    } on SocketException catch (_) {
      emitFailureInternetState(emit);
    }
  }

  Future<void> _onDeleteTask(
    EditTaskDeleted event,
    Emitter<EditAddTaskState> emit,
  ) async {
    emit(state.copyWith(status: EditAddTaskStatus.loading));
    try {
      final task = state.initialTask!;
      await _localStorageTasksRepository.deleteTask(task.id);
      await _analyticsService.deletedTask(id: task.id);
      if (_internetConnection) {
        final revision = _revisionRepository.get();
        final response = await _deleteTaskRepository
            .delete(
              id: task.id,
              extraHeaders: RemoteRequestUtils.createRevisionHeader(revision),
            )
            .timeout(
              RemoteRequestUtils.timeOutDuration,
              onTimeout: RemoteRequestUtils.throwTimeOutInternetConnection,
            );
        await _revisionRepository.set(response.revision);
      }

      emit(state.copyWith(status: EditAddTaskStatus.success));
    } catch (e) {
      emitFailureState(emit);
    }
  }
}
