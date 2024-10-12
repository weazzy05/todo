import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

abstract class AnalyticsService {
  Future<void> createTask({String? id});

  Future<void> updateTask({String? id});

  Future<void> filterChanged({String? filter});

  Future<void> taskCompleteEdited({String? id});

  Future<void> deletedTask({String? id});

  Future<void> setCurrentScreen({
    required String? screenName,
    String screenClassOverride = 'Flutter',
  });

  Future<void> updateOutdatedLocalTasks();
}

class AnalyticEvents {
  static const deleteTask = 'delete_task';
  static const updateTask = 'update_task';
  static const createTask = 'create_task';
  static const taskCompleteEdited = 'task_complete_edited';
  static const filterChanged = 'filter_changed';
  static const updateOutdatedLocalTasks = 'update_outdated_local_tasks';
}

@Injectable(
  as: AnalyticsService,
  env: [
    Environment.dev,
    Environment.prod,
  ],
)
class FirebaseAnalyticsService implements AnalyticsService {
  @override
  Future<void> setCurrentScreen({
    required String? screenName,
    String screenClassOverride = 'Flutter',
  }) async {
    await FirebaseAnalytics.instance.setCurrentScreen(
      screenName: screenName,
      screenClassOverride: screenClassOverride,
    );
  }

  Future<void> _logEvent({
    required String name,
    Map<String, Object>? parameters,
  }) async {
    await FirebaseAnalytics.instance.logEvent(
      name: name,
      parameters: parameters,
    );
  }

  // TODO(weazzy): Переписать аналитику

  @override
  Future<void> createTask({String? id}) async {
    await _logEvent(
      name: AnalyticEvents.createTask,
      parameters: {'id': id ?? ''},
    );
  }

  @override
  Future<void> filterChanged({String? filter}) async {
    await _logEvent(
      name: AnalyticEvents.filterChanged,
      parameters: {'filter': filter ?? ''},
    );
  }

  @override
  Future<void> taskCompleteEdited({String? id}) async {
    await _logEvent(
      name: AnalyticEvents.taskCompleteEdited,
      parameters: {'id': id ?? ''},
    );
  }

  @override
  Future<void> updateTask({String? id}) async {
    await _logEvent(
      name: AnalyticEvents.updateTask,
      parameters: {'id': id ?? ''},
    );
  }

  @override
  Future<void> deletedTask({String? id}) async {
    await _logEvent(
      name: AnalyticEvents.deleteTask,
      parameters: {'id': id ?? ''},
    );
  }

  @override
  Future<void> updateOutdatedLocalTasks() async {
    await _logEvent(name: AnalyticEvents.updateOutdatedLocalTasks);
  }
}

@Injectable(as: AnalyticsService, env: [Environment.test])
class MockAnalyticsService implements AnalyticsService {
  void _logEvent({
    required String name,
    Map<String, Object?>? parameters,
  }) {
    debugPrint('$name $parameters');
  }

  @override
  Future<void> setCurrentScreen({
    required String? screenName,
    String screenClassOverride = 'Flutter',
  }) async {
    debugPrint('$screenName');
  }

  @override
  Future<void> createTask({String? id}) async {
    _logEvent(
      name: AnalyticEvents.createTask,
      parameters: {'id': id},
    );
  }

  @override
  Future<void> deletedTask({String? id}) async {
    _logEvent(
      name: AnalyticEvents.deleteTask,
      parameters: {'id': id},
    );
  }

  @override
  Future<void> filterChanged({String? filter}) async {
    _logEvent(
      name: AnalyticEvents.filterChanged,
      parameters: {'filter': filter},
    );
  }

  @override
  Future<void> taskCompleteEdited({String? id}) async {
    _logEvent(
      name: AnalyticEvents.taskCompleteEdited,
      parameters: {'id': id},
    );
  }

  @override
  Future<void> updateOutdatedLocalTasks() async {
    _logEvent(name: AnalyticEvents.updateOutdatedLocalTasks);
  }

  @override
  Future<void> updateTask({String? id}) async {
    _logEvent(
      name: AnalyticEvents.updateTask,
      parameters: {'id': id},
    );
  }
}
