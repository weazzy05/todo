import 'package:todo/src/feature/tasks_overview/data/task_data_provider.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';

class TasksRepository {
  const TasksRepository({
    required LocalTaskDataProvider localTaskDataProvider,
  }) : _localTaskDataProvider = localTaskDataProvider;

  final LocalTaskDataProvider _localTaskDataProvider;

  ///Стрим списка Задач, блок слушает стрим, при каждом добавлении стрим списка, вызывается emit
  Stream<List<OnlyTaskModel>> getTasks() => _localTaskDataProvider.getTasks();

  ///Сохраняет или изменяет таску, если нашел уже таску с таким же Id заменяет таску, иначе добаляет в список
  Future<void> saveTask(OnlyTaskModel todo) =>
      _localTaskDataProvider.saveTasks(todo);

  ///Удааляет таску с заданным Id, если Id не найдем выбрасывает экспешн
  Future<void> deleteTask(String id) => _localTaskDataProvider.deleteTask(id);

  ///Cохраняет все задачи
  Future<void> saveAllTasks(List<OnlyTaskModel> tasks) =>
      _localTaskDataProvider.saveAllTasks(tasks);

  Future<void> dispose() async => _localTaskDataProvider.dispose();
}
