import 'package:hive_flutter/hive_flutter.dart';
import 'package:rxdart/subjects.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';

/// Task data provider.
abstract interface class TaskDataProvider {
  /// Fetches tasks from the data source
  Stream<List<OnlyTaskModel>> getTasks();

  Future<void> saveTasks(OnlyTaskModel task);

  Future<void> deleteTask(String id);

  Future<void> saveAllTasks(List<OnlyTaskModel> tasks);

  Future<void> dispose();
}

class LocalTaskDataProvider implements TaskDataProvider {
  LocalTaskDataProvider({
    required Box<OnlyTaskModel> box,
  }) : _box = box;

  Box<OnlyTaskModel> _box;

  final _todoStreamController =
      BehaviorSubject<List<OnlyTaskModel>>.seeded(const []);

  static const kTasksBoxName = '__tasks_box__';

  void init() {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(OnlyTaskAdapter());
    }
    final tasks = _box.values.toList();
    if (tasks.isNotEmpty) {
      _todoStreamController.add(tasks);
    } else {
      _todoStreamController.add(const []);
    }
  }

  @override
  Stream<List<OnlyTaskModel>> getTasks() {
    return _todoStreamController.stream;
  }

  @override
  Future<void> saveTasks(task) async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(OnlyTaskAdapter());
    }
    if (!_box.isOpen) {
      _box = await Hive.openBox<OnlyTaskModel>(
        LocalTaskDataProvider.kTasksBoxName,
      );
    }
    final tasks = [..._todoStreamController.value];
    final todoIndex = tasks.indexWhere((t) => t.id == task.id);
    if (todoIndex >= 0) {
      tasks[todoIndex] = task;
      await _box.putAt(todoIndex, task);
    } else {
      tasks.add(task);
      await _box.add(task);
    }
    _todoStreamController.add(tasks);
  }

  @override
  Future<void> saveAllTasks(List<OnlyTaskModel> tasks) async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(OnlyTaskAdapter());
    }
    if (!_box.isOpen) {
      _box = await Hive.openBox<OnlyTaskModel>(
          LocalTaskDataProvider.kTasksBoxName);
    }
    final tasksForStream = <OnlyTaskModel>[];
    tasksForStream.addAll(tasks);
    await _box.clear();
    await _box.addAll(tasks);
    _todoStreamController.add(tasksForStream);
  }

  @override
  Future<void> deleteTask(String id) async {
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(OnlyTaskAdapter());
    }
    if (!_box.isOpen) {
      _box = await Hive.openBox<OnlyTaskModel>(
          LocalTaskDataProvider.kTasksBoxName);
    }
    final tasks = [..._todoStreamController.value];
    final taskIndex = tasks.indexWhere((t) => t.id == id);
    if (taskIndex == -1) {
      throw TodoNotFoundException();
    } else {
      tasks.removeAt(taskIndex);
      await _box.deleteAt(taskIndex);
      _todoStreamController.add(tasks);
    }
  }

  @override
  Future<void> dispose() async {
    await _box.close();
  }
}

class TodoNotFoundException implements Exception {}
