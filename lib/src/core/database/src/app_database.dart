import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

/// {@template app_database}
/// The drift-managed database configuration
/// {@endtemplate}
@DriftDatabase(tables: [TodoTasks], daos: [TodoTasksDao])
class AppDatabase extends _$AppDatabase {
  /// {@macro app_database}
  AppDatabase(super.e);

  /// {@macro app_database}
  AppDatabase.defaults()
      : super(
          driftDatabase(
            name: 'todo_app',
            native: const DriftNativeOptions(),
            // TODO(mlazebny): Update the sqlite3Wasm and driftWorker paths
            // to match the location of the files in your project if needed.
            // https://drift.simonbinder.eu/web/#prerequisites
            web: DriftWebOptions(
              sqlite3Wasm: Uri.parse('sqlite3.wasm'),
              driftWorker: Uri.parse('drift_worker.js'),
            ),
          ),
        );

  @override
  int get schemaVersion => 1;
}

@DriftAccessor(tables: [TodoTasks])
class TodoTasksDao extends DatabaseAccessor<AppDatabase>
    with _$TodoTasksDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  TodoTasksDao(super.attachedDatabase);

  // Получить все задачи
  Stream<List<TodoTask>> getAllTodos() => select(todoTasks).watch();

  Future<List<TodoTask>> getAllTodosSync() => select(todoTasks).get();

  // Получить задачу по ID
  Future<TodoTask?> getTodoById(String id) =>
      (select(todoTasks)..where((t) => t.id.equals(id))).getSingleOrNull();

  // Вставить новую задачу
  Future<int> insertTodo(TodoTasksCompanion todo) =>
      into(todoTasks).insert(todo);

  // Обновить существующую задачу
  Future<bool> updateTodo(TodoTasksCompanion todo) =>
      update(todoTasks).replace(todo);

  Future<int> createOrUpdateUser(TodoTasksCompanion todo) =>
      into(todoTasks).insertOnConflictUpdate(todo);

  // Удалить задачу по ID
  Future<int> deleteTodo(String id) =>
      (delete(todoTasks)..where((t) => t.id.equals(id))).go();
}

class TodoTasks extends Table {
  TextColumn get id => text()(); // Поле ID как текст, уникальное
  TextColumn get description =>
      text().withLength(min: 1, max: 1000)(); // Основной текст задачи
  TextColumn get importance => text().withDefault(
        const Constant('basic'),
      )(); // Важность задачи с дефолтным значением
  IntColumn get deadline => integer().nullable()(); // Дедлайн, nullable
  BoolColumn get done => boolean()(); // Статус выполнения задачи
  TextColumn get color => text().nullable()(); // Цвет задачи, nullable
  IntColumn get createdAt =>
      integer().named('created_at')(); // Дата создания задачи
  IntColumn get changedAt =>
      integer().named('changed_at')(); // Дата изменения задачи
  TextColumn get lastUpdatedBy =>
      text().named('last_updated_by')(); // Последний обновивший задачу

  @override
  Set<Column> get primaryKey => {id}; // Установка первичного ключа
}
