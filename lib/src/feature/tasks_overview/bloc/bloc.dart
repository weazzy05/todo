import 'dart:async';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/domain/analytic_service.dart';
import 'package:todo/domain/device_info_repository.dart';
import 'package:todo/domain/task_repository.dart';
import 'package:todo/src/core/utils/extensions.dart';
import 'package:todo/src/core/utils/priority.dart';
import 'package:todo/src/feature/tasks_overview/filter_tasks.dart';
import 'package:uuid/uuid.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

// TODO(weazzy): backend repository add
class InitializationBloc
    extends Bloc<InitializationEvent, InitializationState> {
  final TasksRepository _localStorageTasksRepository;
  final DeviceInfoRepository _deviceInfo;
  final AnalyticsService _analyticsService;

  bool _internetConnection = true;

  InitializationBloc({
    required TasksRepository localStorageTasksRepository,
    required DeviceInfoRepository deviceInfo,
    required AnalyticsService analyticsService,
  })  : _localStorageTasksRepository = localStorageTasksRepository,
        _deviceInfo = deviceInfo,
        _analyticsService = analyticsService,
        super(const InitializationState()) {
    on<StartInitializationEvent>(_onStart);
    on<TaskCompletionToggledInitializationEvent>(
      _onTodoCompletionToggled,
      transformer: sequential(),
    );
    on<TaskFilterChangedInitializationEvent>(_onFilterChanged);
    on<TaskDeleteInitializationEvent>(
      _onTodoDeleted,
      transformer: sequential(),
    );
    on<FastTaskCreateInitializationEvent>(
      _onFastCreate,
      transformer: sequential(),
    );
  }

  void emitFailureInternetState(Emitter<InitializationState> emit) {
    _internetConnection = false;

    emit(
      state.copyWith(
        status: InitializationStatus.failedInternetCollection,
      ),
    );
  }

  void emitFailureState(Emitter<InitializationState> emit) {
    emit(
      state.copyWith(
        status: InitializationStatus.failure,
      ),
    );
  }

  Future<void> _onFilterChanged(
    TaskFilterChangedInitializationEvent event,
    Emitter<InitializationState> emit,
  ) async {
    await _analyticsService.filterChanged(
      filter: event.filter.toString(),
    );
    emit(state.copyWith(filter: event.filter));
  }

  Future<void> _onStart(
    StartInitializationEvent event,
    Emitter<InitializationState> emit,
  ) async {
    emit(state.copyWith(status: InitializationStatus.loading));
    await emit.forEach<List<OnlyTaskModel>>(
      _localStorageTasksRepository.getTasks(),
      onData: (tasks) {
        final completedTasks =
            tasks.where((element) => element.done).toList().length;
        return state.copyWith(
          status: InitializationStatus.success,
          competedTasks: completedTasks,
          tasks: tasks,
        );
      },
      onError: (_, __) => state.copyWith(
        status: InitializationStatus.failure,
      ),
    );
    // try {
    //   final responseServer = await _getTasksListApi.get();
    //   if (responseServer.revision > _revisionRepository.get()) {
    //     await _revisionRepository.set(responseServer.revision);
    //     await _onUpdateLocalData(emit, responseServer.list);
    //   } else {
    //     final List<OnlyTaskModel> taskList =
    //         await _localStorageTasksRepository.getTasks().first;
    //     final revision = responseServer.revision;
    //     final response = await _patchTaskListApi
    //         .patch(
    //           TasksRequestModel(list: taskList),
    //           extraHeaders: RemoteRequestUtils.createRevisionHeader(revision),
    //         )
    //         .timeout(
    //           RemoteRequestUtils.timeOutDuration,
    //           onTimeout: RemoteRequestUtils.throwTimeOutInternetConnection,
    //         );
    //     await _revisionRepository.set(response.revision);
    //   }
    // } on SocketException catch (_) {
    //   emitFailureInternetState(emit);
    // } catch (e) {
    //   emitFailureState(emit);
    // } finally {
    //   await emit.forEach<List<OnlyTaskModel>>(
    //     _localStorageTasksRepository.getTasks(),
    //     onData: (tasks) {
    //       final completedTasks =
    //           tasks.where((element) => element.done == true).toList().length;
    //       return state.copyWith(
    //         status: InitializationStatus.success,
    //         competedTasks: completedTasks,
    //         tasks: tasks,
    //       );
    //     },
    //     onError: (_, __) => state.copyWith(
    //       status: InitializationStatus.failure,
    //     ),
    //   );
    // }
  }

  Future<void> _onTodoCompletionToggled(
    TaskCompletionToggledInitializationEvent event,
    Emitter<InitializationState> emit,
  ) async {
    final newTask = event.task.copyWith(
      done: event.isCompleted,
      changedAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      lastUpdatedBy: await _deviceInfo.getInfo(),
    );
    try {
      if (state.filter == TaskFilter.activeOnly &&
          event.sendingApproach == SendingApproach.dismissible) {
        await Future.delayed(const Duration(milliseconds: 300));
      }
      await _localStorageTasksRepository.saveTask(newTask);
      await _analyticsService.taskCompleteEdited(id: newTask.id);
      // if (_internetConnection) {
      //   final revision = _revisionRepository.get();
      //   final response = await _updateTaskRepository
      //       .put(
      //         TaskRequestModel(element: newTask),
      //         id: newTask.id,
      //         extraHeaders: RemoteRequestUtils.createRevisionHeader(revision),
      //       )
      //       .timeout(
      //         RemoteRequestUtils.timeOutDuration,
      //         onTimeout: RemoteRequestUtils.throwTimeOutInternetConnection,
      //       );
      //   await _revisionRepository.set(response.revision);
      // }
    } on SocketException catch (_) {
      emitFailureInternetState(emit);
    } catch (e) {
      emitFailureState(emit);
    }
  }

  Future<void> _onTodoDeleted(
    TaskDeleteInitializationEvent event,
    Emitter<InitializationState> emit,
  ) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      await _localStorageTasksRepository.deleteTask(event.task.id);
      await _analyticsService.deletedTask(id: event.task.id);
      // if (_internetConnection) {
      //   final revision = _revisionRepository.get();
      //   final response = await _deleteTaskRepository
      //       .delete(
      //         id: event.task.id,
      //         extraHeaders: RemoteRequestUtils.createRevisionHeader(revision),
      //       )
      //       .timeout(
      //         RemoteRequestUtils.timeOutDuration,
      //         onTimeout: RemoteRequestUtils.throwTimeOutInternetConnection,
      //       );
      //   await _revisionRepository.set(response.revision);
      // }
    } on SocketException catch (_) {
      emitFailureInternetState(emit);
    } catch (e) {
      emitFailureState(emit);
    }
  }

  Future<void> _onFastCreate(
    FastTaskCreateInitializationEvent event,
    Emitter<InitializationState> emit,
  ) async {
    final int nowTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    emit(state.copyWith(status: InitializationStatus.loading));
    final task = OnlyTaskModel(
      id: const Uuid().v4(),
      text: event.title,
      importance: Priority.basic.toShortString(),
      done: false,
      createdAt: nowTime,
      changedAt: nowTime,
      lastUpdatedBy: await _deviceInfo.getInfo(),
    );
    try {
      await _localStorageTasksRepository.saveTask(task);
      await _analyticsService.createTask(id: task.id);
      // if (_internetConnection) {
      //   final revision = _revisionRepository.get();
      //   final response = await _createTasksListRepository
      //       .post(
      //         TaskRequestModel(element: task),
      //         extraHeaders: RemoteRequestUtils.createRevisionHeader(revision),
      //       )
      //       .timeout(
      //         RemoteRequestUtils.timeOutDuration,
      //         onTimeout: RemoteRequestUtils.throwTimeOutInternetConnection,
      //       );
      //   await _revisionRepository.set(response.revision);
      // }
      emit(state.copyWith(status: InitializationStatus.success));
    } on SocketException catch (_) {
      emitFailureInternetState(emit);
    } catch (e) {
      emitFailureState(emit);
    }
  }

  Future<void> _onUpdateLocalData(
      Emitter<InitializationState> emit, List<OnlyTaskModel> tasks) async {
    try {
      await _localStorageTasksRepository.saveAllTasks(tasks);
      await _analyticsService.updateOutdatedLocalTasks();
    } catch (e) {
      emitFailureState(emit);
    }
  }

  @override
  Future<void> close() async {
    await _localStorageTasksRepository.dispose();
    return super.close();
  }
}
