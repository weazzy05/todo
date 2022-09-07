import 'package:todo/data/models/only_task.dart';

abstract class ITaskService {
  const ITaskService();

  Stream<List<OnlyTaskModel>> getTasks();

  Future<void> saveTasks(OnlyTaskModel task);

  Future<void> deleteTask(String id);

  Future<void> saveAllTasks(List<OnlyTaskModel> tasks);

  Future<void> dispose();
}
