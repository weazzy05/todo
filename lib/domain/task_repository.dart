import 'package:injectable/injectable.dart';
import 'package:todo/data/models/only_task.dart';
import 'package:todo/data/task_api/task_service.dart';

@injectable
class TasksRepository {
  const TasksRepository({
    required ITaskService taskApi,
  }) : _todosApi = taskApi;

  final ITaskService _todosApi;

  ///Стрим списка Задач, блок слушает стрим, при каждом добавлении стрим списка, вызывается emit
  Stream<List<OnlyTaskModel>> getTasks() => _todosApi.getTasks();

  ///Сохраняет или изменяет таску, если нашел уже таску с таким же Id заменяет таску, иначе добаляет в список
  Future<void> saveTask(OnlyTaskModel todo) => _todosApi.saveTasks(todo);

  ///Удааляет таску с заданным Id, если Id не найдем выбрасывает экспешн
  Future<void> deleteTask(String id) => _todosApi.deleteTask(id);

  ///Cохраняет все задачи
  Future<void> saveAllTasks(List<OnlyTaskModel> tasks) =>
      _todosApi.saveAllTasks(tasks);

  Future<void> dispose() async => _todosApi.dispose();
}
