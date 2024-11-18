import 'dart:async';
import 'dart:io';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/src/core/analytic_service.dart';
import 'package:todo/src/core/utils/extensions.dart';
import 'package:todo/src/core/utils/priority.dart';
import 'package:todo/src/feature/tasks_overview/data/device_info_repository.dart';
import 'package:todo/src/feature/tasks_overview/data/task_repository.dart';
import 'package:todo/src/feature/tasks_overview/filter_tasks.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';
import 'package:uuid/uuid.dart';

part 'bloc.freezed.dart';
part 'event.dart';
part 'state.dart';

// TODO(weazzy): backend repository add
class TaskOverviewBloc extends Bloc<TaskOverviewEvent, TaskOverviewState> {
  final TasksRepository _localStorageTasksRepository;
  final DeviceInfoRepository _deviceInfo;
  final AnalyticsService _analyticsService;

  TaskOverviewBloc({
    required TasksRepository localStorageTasksRepository,
    required DeviceInfoRepository deviceInfo,
    required AnalyticsService analyticsService,
  })  : _localStorageTasksRepository = localStorageTasksRepository,
        _deviceInfo = deviceInfo,
        _analyticsService = analyticsService,
        super(const TaskOverviewState()) {
    on<TaskOverviewEvent>(
      (event, emit) async {
        await event.map(
          startInit: (e) => _onStart(e, emit),
          taskCompletedToggled: (e) => _onTodoCompletionToggled(e, emit),
          filterChange: (e) => _onFilterChanged(e, emit),
          taskDelete: (e) => _onTodoDeleted(e, emit),
          createOnMainScreen: (e) => _onFastCreate(e, emit),
        );
      },
      transformer: concurrent(),
    );
  }

  void emitFailureInternetState(Emitter<TaskOverviewState> emit) {
    emit(
      state.copyWith(
        status: InitializationStatus.failedInternetCollection,
      ),
    );
  }

  void emitFailureState(Emitter<TaskOverviewState> emit) {
    emit(
      state.copyWith(
        status: InitializationStatus.failure,
      ),
    );
  }

  Future<void> _onFilterChanged(
    _TaskFilterChangedEvent event,
    Emitter<TaskOverviewState> emit,
  ) async {
    emit(state.copyWith(filter: event.filter));
    await _analyticsService.filterChanged(
      filter: event.filter.toString(),
    );
  }

  Future<void> _onStart(
    _StartInitializationEvent event,
    Emitter<TaskOverviewState> emit,
  ) async {
    emit(state.copyWith(status: InitializationStatus.loading));
    final tasksStream = _localStorageTasksRepository.getTasks();
    await emit.forEach<List<OnlyTaskModel>>(
      tasksStream,
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
  }

  Future<void> _onTodoCompletionToggled(
    _TaskCompletionToggledEvent event,
    Emitter<TaskOverviewState> emit,
  ) async {
    final newTask = event.task.copyWith(
      done: event.isCompleted,
      changedAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      lastUpdatedBy: await _deviceInfo.getInfo(),
    );
    try {
      if (state.filter == TaskFilter.activeOnly &&
          event.sendingApproach == SendingApproach.dismissible) {
        await Future<void>.delayed(const Duration(milliseconds: 300));
      }
      await _localStorageTasksRepository.saveTask(newTask);
      await _analyticsService.taskCompleteEdited(id: newTask.id);
    } on SocketException catch (_) {
      emitFailureInternetState(emit);
    } catch (e) {
      emitFailureState(emit);
    }
  }

  Future<void> _onTodoDeleted(
    _TaskDeleteEvent event,
    Emitter<TaskOverviewState> emit,
  ) async {
    try {
      await _localStorageTasksRepository.deleteTask(event.task.id);
      await _analyticsService.deletedTask(id: event.task.id);
    } on SocketException catch (_) {
      emitFailureInternetState(emit);
    } catch (e) {
      emitFailureState(emit);
    }
  }

  Future<void> _onFastCreate(
    _FastTaskCreateEvent event,
    Emitter<TaskOverviewState> emit,
  ) async {
    final nowTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    // emit(state.copyWith(status: InitializationStatus.loading));
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
      emit(state.copyWith(status: InitializationStatus.success));
    } on SocketException catch (_) {
      emitFailureInternetState(emit);
    } catch (e) {
      emitFailureState(emit);
    }
  }
}
