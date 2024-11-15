import 'package:todo/src/core/database/database.dart';

/// Task data provider.
abstract interface class TaskDataProvider {
  /// Fetches tasks from the data source
  Stream<List<TodoTask>> getTasks();

  Future<void> saveTask(TodoTasksCompanion task);

  Future<void> deleteTask(String id);
}

class LocalTaskDataProvider implements TaskDataProvider {
  LocalTaskDataProvider({
    required TodoTasksDao todoTasksDao,
  }) : _todoTasksDao = todoTasksDao;

  final TodoTasksDao _todoTasksDao;

  static const kTasksBoxName = '__tasks_box__';

  @override
  Stream<List<TodoTask>> getTasks() => _todoTasksDao.getAllTodos();

  @override
  Future<void> saveTask(TodoTasksCompanion task) async {
    await _todoTasksDao.createOrUpdateUser(task);
  }

  @override
  Future<void> deleteTask(String id) async {
    await _todoTasksDao.deleteTodo(id);
  }
}

class TodoNotFoundException implements Exception {}
