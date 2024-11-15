import 'package:todo/src/feature/tasks_overview/data/task_data_provider.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';

/// Task data provider.
abstract interface class TasksRepository {
  /// Fetches tasks from the data source
  Stream<List<OnlyTaskModel>> getTasks();

  Future<void> saveTask(OnlyTaskModel task);

  Future<void> deleteTask(String id);
}

class TasksRepositoryImpl implements TasksRepository {
  const TasksRepositoryImpl({
    required TaskDataProvider taskDataProvider,
  }) : _taskDataProvider = taskDataProvider;

  final TaskDataProvider _taskDataProvider;

  ///Стрим списка Задач, блок слушает стрим, при каждом добавлении стрим списка, вызывается emit
  @override
  Stream<List<OnlyTaskModel>> getTasks() {
    final stream = _taskDataProvider.getTasks();
    return stream.map(
      (tasks) => tasks
          .map(
            (task) => OnlyTaskModel.fromDb(localTask: task),
          )
          .toList(),
    );
  }

  ///Сохраняет или изменяет таску, если нашел уже таску с таким же Id заменяет таску, иначе добаляет в список
  @override
  Future<void> saveTask(OnlyTaskModel todo) =>
      _taskDataProvider.saveTask(todo.toCompanion());

  ///Удааляет таску с заданным Id, если Id не найдем выбрасывает экспешн
  @override
  Future<void> deleteTask(String id) => _taskDataProvider.deleteTask(id);
}
