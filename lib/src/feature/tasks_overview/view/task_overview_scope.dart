import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:todo/src/core/utils/extensions/context_extension.dart';
import 'package:todo/src/core/utils/refined_logger.dart';
import 'package:todo/src/feature/initialization/widget/dependencies_scope.dart';
import 'package:todo/src/feature/tasks_overview/bloc/bloc.dart';
import 'package:todo/src/feature/tasks_overview/filter_tasks.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';

/// Scope for tasks.
class TaskOverviewScope extends StatefulWidget {
  /// Creates a new tasks scope.
  const TaskOverviewScope({
    required this.child,
    super.key,
  });

  /// The child widget.
  final Widget child;

  /// Obtain the scope state from the given [context].
  static TaskOverviewScopeState of(
    BuildContext context, {
    bool listen = true,
  }) =>
      context.inhOf<_TaskOverviewInherited>(listen: listen).scopeState;

  @override
  State<TaskOverviewScope> createState() => TaskOverviewScopeState();
}

/// State for tasks scope.
class TaskOverviewScopeState extends State<TaskOverviewScope> {
  late final TaskOverviewBloc taskOverviewBloc;
  late final StreamSubscription<void> _taskOverviewBlocSubscription;
  var _taskOverviewBlocState = const TaskOverviewState();

  @override
  void initState() {
    super.initState();
    final deviceInfo = DependenciesScope.of(context).deviceInfoRepository;
    final localStorageTasksRepository =
        DependenciesScope.of(context).tasksRepository;
    final analyticsService = DependenciesScope.of(context).analyticsService;
    taskOverviewBloc = TaskOverviewBloc(
      localStorageTasksRepository: localStorageTasksRepository,
      deviceInfo: deviceInfo,
      analyticsService: analyticsService,
    )..add(const TaskOverviewEvent.startInit());
    _taskOverviewBlocSubscription =
        taskOverviewBloc.stream.listen(_didStateChanged);
  }

  @override
  void dispose() {
    taskOverviewBloc.close();
    _taskOverviewBlocSubscription.cancel();
    super.dispose();
  }

  void _didStateChanged(TaskOverviewState state) {
    if (state != _taskOverviewBlocState) {
      setState(() => _taskOverviewBlocState = state);
    }
  }

  void _listenerInitializationBloc(
    BuildContext context,
    TaskOverviewState state,
  ) {
    if (state.status == InitializationStatus.failedInternetCollection) {
      logger.info('Network Connection Error');
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!.no_internet_connection,
            ),
          ),
        );
    } else if (state.status == InitializationStatus.failure) {
      taskOverviewBloc.add(const TaskOverviewEvent.startInit());
    }
  }

  /// The list of tasks.
  List<OnlyTaskModel> get tasks => _taskOverviewBlocState.tasks;

  /// The error message.
  String? get error {
    final error = null;

    if (error != null) {
      return error.toString();
    }

    return null;
  }

  /// Fetch tasks.
  void fetchTasks() {
    taskOverviewBloc.add(const TaskOverviewEvent.startInit());
  }

  /// create task.
  void createTask(String title) {
    taskOverviewBloc.add(TaskOverviewEvent.createOnMainScreen(title));
  }

  /// filter tasks.
  void filterTasks(TaskFilter filter) {
    taskOverviewBloc.add(TaskOverviewEvent.filterChange(filter));
  }

  /// filter tasks.
  void toggleTask({
    required OnlyTaskModel task,
    required bool isCompleted,
    SendingApproach sendingApproach = SendingApproach.dismissible,
  }) {
    taskOverviewBloc.add(
      TaskOverviewEvent.taskCompletedToggled(
        task: task,
        isCompleted: isCompleted,
        sendingApproach: sendingApproach,
      ),
    );
  }

  /// filter tasks.
  void taskDelete(OnlyTaskModel task) {
    taskOverviewBloc.add(TaskOverviewEvent.taskDelete(task));
  }

  /// Find task by id.
  OnlyTaskModel? findTaskById(String id) =>
      tasks.firstWhereOrNull((task) => task.id == id);

  @override
  Widget build(BuildContext context) =>
      BlocListener<TaskOverviewBloc, TaskOverviewState>(
        bloc: taskOverviewBloc,
        listenWhen: (previous, current) => previous.status != current.status,
        listener: _listenerInitializationBloc,
        child: _TaskOverviewInherited(
          state: _taskOverviewBlocState,
          scopeState: this,
          child: widget.child,
        ),
      );
}

class _TaskOverviewInherited extends InheritedWidget {
  const _TaskOverviewInherited({
    required super.child,
    required this.state,
    required this.scopeState,
  });

  final TaskOverviewState state;
  final TaskOverviewScopeState scopeState;

  @override
  bool updateShouldNotify(_TaskOverviewInherited oldWidget) =>
      state != oldWidget.state;
}
