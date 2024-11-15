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
    required LocalTaskDataProvider localTaskDataProvider,
  }) : _localTaskDataProvider = localTaskDataProvider;

  final LocalTaskDataProvider _localTaskDataProvider;

  ///Стрим списка Задач, блок слушает стрим, при каждом добавлении стрим списка, вызывается emit
  Stream<List<OnlyTaskModel>> getTasks() {
    final stream = _localTaskDataProvider.getTasks();
    return stream.map(
      (tasks) => tasks
          .map(
            (task) => OnlyTaskModel.fromDb(localTask: task),
          )
          .toList(),
    );
  }

  ///Сохраняет или изменяет таску, если нашел уже таску с таким же Id заменяет таску, иначе добаляет в список
  Future<void> saveTask(OnlyTaskModel todo) =>
      _localTaskDataProvider.saveTask(todo.toCompanion());

  ///Удааляет таску с заданным Id, если Id не найдем выбрасывает экспешн
  Future<void> deleteTask(String id) => _localTaskDataProvider.deleteTask(id);
}
