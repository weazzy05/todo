// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TodoTasksTable extends TodoTasks
    with TableInfo<$TodoTasksTable, TodoTask> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodoTasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(
          minTextLength: 1, maxTextLength: 1000),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _importanceMeta =
      const VerificationMeta('importance');
  @override
  late final GeneratedColumn<String> importance = GeneratedColumn<String>(
      'importance', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('basic'));
  static const VerificationMeta _deadlineMeta =
      const VerificationMeta('deadline');
  @override
  late final GeneratedColumn<int> deadline = GeneratedColumn<int>(
      'deadline', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _doneMeta = const VerificationMeta('done');
  @override
  late final GeneratedColumn<bool> done = GeneratedColumn<bool>(
      'done', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("done" IN (0, 1))'));
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
      'color', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<int> createdAt = GeneratedColumn<int>(
      'created_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _changedAtMeta =
      const VerificationMeta('changedAt');
  @override
  late final GeneratedColumn<int> changedAt = GeneratedColumn<int>(
      'changed_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _lastUpdatedByMeta =
      const VerificationMeta('lastUpdatedBy');
  @override
  late final GeneratedColumn<String> lastUpdatedBy = GeneratedColumn<String>(
      'last_updated_by', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        description,
        importance,
        deadline,
        done,
        color,
        createdAt,
        changedAt,
        lastUpdatedBy
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'todo_tasks';
  @override
  VerificationContext validateIntegrity(Insertable<TodoTask> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('importance')) {
      context.handle(
          _importanceMeta,
          importance.isAcceptableOrUnknown(
              data['importance']!, _importanceMeta));
    }
    if (data.containsKey('deadline')) {
      context.handle(_deadlineMeta,
          deadline.isAcceptableOrUnknown(data['deadline']!, _deadlineMeta));
    }
    if (data.containsKey('done')) {
      context.handle(
          _doneMeta, done.isAcceptableOrUnknown(data['done']!, _doneMeta));
    } else if (isInserting) {
      context.missing(_doneMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
          _colorMeta, color.isAcceptableOrUnknown(data['color']!, _colorMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('changed_at')) {
      context.handle(_changedAtMeta,
          changedAt.isAcceptableOrUnknown(data['changed_at']!, _changedAtMeta));
    } else if (isInserting) {
      context.missing(_changedAtMeta);
    }
    if (data.containsKey('last_updated_by')) {
      context.handle(
          _lastUpdatedByMeta,
          lastUpdatedBy.isAcceptableOrUnknown(
              data['last_updated_by']!, _lastUpdatedByMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedByMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TodoTask map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoTask(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      importance: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}importance'])!,
      deadline: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}deadline']),
      done: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}done'])!,
      color: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}color']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!,
      changedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}changed_at'])!,
      lastUpdatedBy: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}last_updated_by'])!,
    );
  }

  @override
  $TodoTasksTable createAlias(String alias) {
    return $TodoTasksTable(attachedDatabase, alias);
  }
}

class TodoTask extends DataClass implements Insertable<TodoTask> {
  final String id;
  final String description;
  final String importance;
  final int? deadline;
  final bool done;
  final String? color;
  final int createdAt;
  final int changedAt;
  final String lastUpdatedBy;
  const TodoTask(
      {required this.id,
      required this.description,
      required this.importance,
      this.deadline,
      required this.done,
      this.color,
      required this.createdAt,
      required this.changedAt,
      required this.lastUpdatedBy});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['description'] = Variable<String>(description);
    map['importance'] = Variable<String>(importance);
    if (!nullToAbsent || deadline != null) {
      map['deadline'] = Variable<int>(deadline);
    }
    map['done'] = Variable<bool>(done);
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    map['created_at'] = Variable<int>(createdAt);
    map['changed_at'] = Variable<int>(changedAt);
    map['last_updated_by'] = Variable<String>(lastUpdatedBy);
    return map;
  }

  TodoTasksCompanion toCompanion(bool nullToAbsent) {
    return TodoTasksCompanion(
      id: Value(id),
      description: Value(description),
      importance: Value(importance),
      deadline: deadline == null && nullToAbsent
          ? const Value.absent()
          : Value(deadline),
      done: Value(done),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
      createdAt: Value(createdAt),
      changedAt: Value(changedAt),
      lastUpdatedBy: Value(lastUpdatedBy),
    );
  }

  factory TodoTask.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoTask(
      id: serializer.fromJson<String>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      importance: serializer.fromJson<String>(json['importance']),
      deadline: serializer.fromJson<int?>(json['deadline']),
      done: serializer.fromJson<bool>(json['done']),
      color: serializer.fromJson<String?>(json['color']),
      createdAt: serializer.fromJson<int>(json['createdAt']),
      changedAt: serializer.fromJson<int>(json['changedAt']),
      lastUpdatedBy: serializer.fromJson<String>(json['lastUpdatedBy']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'description': serializer.toJson<String>(description),
      'importance': serializer.toJson<String>(importance),
      'deadline': serializer.toJson<int?>(deadline),
      'done': serializer.toJson<bool>(done),
      'color': serializer.toJson<String?>(color),
      'createdAt': serializer.toJson<int>(createdAt),
      'changedAt': serializer.toJson<int>(changedAt),
      'lastUpdatedBy': serializer.toJson<String>(lastUpdatedBy),
    };
  }

  TodoTask copyWith(
          {String? id,
          String? description,
          String? importance,
          Value<int?> deadline = const Value.absent(),
          bool? done,
          Value<String?> color = const Value.absent(),
          int? createdAt,
          int? changedAt,
          String? lastUpdatedBy}) =>
      TodoTask(
        id: id ?? this.id,
        description: description ?? this.description,
        importance: importance ?? this.importance,
        deadline: deadline.present ? deadline.value : this.deadline,
        done: done ?? this.done,
        color: color.present ? color.value : this.color,
        createdAt: createdAt ?? this.createdAt,
        changedAt: changedAt ?? this.changedAt,
        lastUpdatedBy: lastUpdatedBy ?? this.lastUpdatedBy,
      );
  TodoTask copyWithCompanion(TodoTasksCompanion data) {
    return TodoTask(
      id: data.id.present ? data.id.value : this.id,
      description:
          data.description.present ? data.description.value : this.description,
      importance:
          data.importance.present ? data.importance.value : this.importance,
      deadline: data.deadline.present ? data.deadline.value : this.deadline,
      done: data.done.present ? data.done.value : this.done,
      color: data.color.present ? data.color.value : this.color,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      changedAt: data.changedAt.present ? data.changedAt.value : this.changedAt,
      lastUpdatedBy: data.lastUpdatedBy.present
          ? data.lastUpdatedBy.value
          : this.lastUpdatedBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TodoTask(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('importance: $importance, ')
          ..write('deadline: $deadline, ')
          ..write('done: $done, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt, ')
          ..write('changedAt: $changedAt, ')
          ..write('lastUpdatedBy: $lastUpdatedBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, description, importance, deadline, done,
      color, createdAt, changedAt, lastUpdatedBy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoTask &&
          other.id == this.id &&
          other.description == this.description &&
          other.importance == this.importance &&
          other.deadline == this.deadline &&
          other.done == this.done &&
          other.color == this.color &&
          other.createdAt == this.createdAt &&
          other.changedAt == this.changedAt &&
          other.lastUpdatedBy == this.lastUpdatedBy);
}

class TodoTasksCompanion extends UpdateCompanion<TodoTask> {
  final Value<String> id;
  final Value<String> description;
  final Value<String> importance;
  final Value<int?> deadline;
  final Value<bool> done;
  final Value<String?> color;
  final Value<int> createdAt;
  final Value<int> changedAt;
  final Value<String> lastUpdatedBy;
  final Value<int> rowid;
  const TodoTasksCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.importance = const Value.absent(),
    this.deadline = const Value.absent(),
    this.done = const Value.absent(),
    this.color = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.changedAt = const Value.absent(),
    this.lastUpdatedBy = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TodoTasksCompanion.insert({
    required String id,
    required String description,
    this.importance = const Value.absent(),
    this.deadline = const Value.absent(),
    required bool done,
    this.color = const Value.absent(),
    required int createdAt,
    required int changedAt,
    required String lastUpdatedBy,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        description = Value(description),
        done = Value(done),
        createdAt = Value(createdAt),
        changedAt = Value(changedAt),
        lastUpdatedBy = Value(lastUpdatedBy);
  static Insertable<TodoTask> custom({
    Expression<String>? id,
    Expression<String>? description,
    Expression<String>? importance,
    Expression<int>? deadline,
    Expression<bool>? done,
    Expression<String>? color,
    Expression<int>? createdAt,
    Expression<int>? changedAt,
    Expression<String>? lastUpdatedBy,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (importance != null) 'importance': importance,
      if (deadline != null) 'deadline': deadline,
      if (done != null) 'done': done,
      if (color != null) 'color': color,
      if (createdAt != null) 'created_at': createdAt,
      if (changedAt != null) 'changed_at': changedAt,
      if (lastUpdatedBy != null) 'last_updated_by': lastUpdatedBy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TodoTasksCompanion copyWith(
      {Value<String>? id,
      Value<String>? description,
      Value<String>? importance,
      Value<int?>? deadline,
      Value<bool>? done,
      Value<String?>? color,
      Value<int>? createdAt,
      Value<int>? changedAt,
      Value<String>? lastUpdatedBy,
      Value<int>? rowid}) {
    return TodoTasksCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      importance: importance ?? this.importance,
      deadline: deadline ?? this.deadline,
      done: done ?? this.done,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
      changedAt: changedAt ?? this.changedAt,
      lastUpdatedBy: lastUpdatedBy ?? this.lastUpdatedBy,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (importance.present) {
      map['importance'] = Variable<String>(importance.value);
    }
    if (deadline.present) {
      map['deadline'] = Variable<int>(deadline.value);
    }
    if (done.present) {
      map['done'] = Variable<bool>(done.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<int>(createdAt.value);
    }
    if (changedAt.present) {
      map['changed_at'] = Variable<int>(changedAt.value);
    }
    if (lastUpdatedBy.present) {
      map['last_updated_by'] = Variable<String>(lastUpdatedBy.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodoTasksCompanion(')
          ..write('id: $id, ')
          ..write('description: $description, ')
          ..write('importance: $importance, ')
          ..write('deadline: $deadline, ')
          ..write('done: $done, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt, ')
          ..write('changedAt: $changedAt, ')
          ..write('lastUpdatedBy: $lastUpdatedBy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TodoTasksTable todoTasks = $TodoTasksTable(this);
  late final TodoTasksDao todoTasksDao = TodoTasksDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todoTasks];
}

typedef $$TodoTasksTableCreateCompanionBuilder = TodoTasksCompanion Function({
  required String id,
  required String description,
  Value<String> importance,
  Value<int?> deadline,
  required bool done,
  Value<String?> color,
  required int createdAt,
  required int changedAt,
  required String lastUpdatedBy,
  Value<int> rowid,
});
typedef $$TodoTasksTableUpdateCompanionBuilder = TodoTasksCompanion Function({
  Value<String> id,
  Value<String> description,
  Value<String> importance,
  Value<int?> deadline,
  Value<bool> done,
  Value<String?> color,
  Value<int> createdAt,
  Value<int> changedAt,
  Value<String> lastUpdatedBy,
  Value<int> rowid,
});

class $$TodoTasksTableFilterComposer
    extends FilterComposer<_$AppDatabase, $TodoTasksTable> {
  $$TodoTasksTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get importance => $state.composableBuilder(
      column: $state.table.importance,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get deadline => $state.composableBuilder(
      column: $state.table.deadline,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get done => $state.composableBuilder(
      column: $state.table.done,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get changedAt => $state.composableBuilder(
      column: $state.table.changedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get lastUpdatedBy => $state.composableBuilder(
      column: $state.table.lastUpdatedBy,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$TodoTasksTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $TodoTasksTable> {
  $$TodoTasksTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get description => $state.composableBuilder(
      column: $state.table.description,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get importance => $state.composableBuilder(
      column: $state.table.importance,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get deadline => $state.composableBuilder(
      column: $state.table.deadline,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get done => $state.composableBuilder(
      column: $state.table.done,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get color => $state.composableBuilder(
      column: $state.table.color,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get changedAt => $state.composableBuilder(
      column: $state.table.changedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get lastUpdatedBy => $state.composableBuilder(
      column: $state.table.lastUpdatedBy,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$TodoTasksTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TodoTasksTable,
    TodoTask,
    $$TodoTasksTableFilterComposer,
    $$TodoTasksTableOrderingComposer,
    $$TodoTasksTableCreateCompanionBuilder,
    $$TodoTasksTableUpdateCompanionBuilder,
    (TodoTask, BaseReferences<_$AppDatabase, $TodoTasksTable, TodoTask>),
    TodoTask,
    PrefetchHooks Function()> {
  $$TodoTasksTableTableManager(_$AppDatabase db, $TodoTasksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$TodoTasksTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$TodoTasksTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> description = const Value.absent(),
            Value<String> importance = const Value.absent(),
            Value<int?> deadline = const Value.absent(),
            Value<bool> done = const Value.absent(),
            Value<String?> color = const Value.absent(),
            Value<int> createdAt = const Value.absent(),
            Value<int> changedAt = const Value.absent(),
            Value<String> lastUpdatedBy = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TodoTasksCompanion(
            id: id,
            description: description,
            importance: importance,
            deadline: deadline,
            done: done,
            color: color,
            createdAt: createdAt,
            changedAt: changedAt,
            lastUpdatedBy: lastUpdatedBy,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String description,
            Value<String> importance = const Value.absent(),
            Value<int?> deadline = const Value.absent(),
            required bool done,
            Value<String?> color = const Value.absent(),
            required int createdAt,
            required int changedAt,
            required String lastUpdatedBy,
            Value<int> rowid = const Value.absent(),
          }) =>
              TodoTasksCompanion.insert(
            id: id,
            description: description,
            importance: importance,
            deadline: deadline,
            done: done,
            color: color,
            createdAt: createdAt,
            changedAt: changedAt,
            lastUpdatedBy: lastUpdatedBy,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$TodoTasksTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TodoTasksTable,
    TodoTask,
    $$TodoTasksTableFilterComposer,
    $$TodoTasksTableOrderingComposer,
    $$TodoTasksTableCreateCompanionBuilder,
    $$TodoTasksTableUpdateCompanionBuilder,
    (TodoTask, BaseReferences<_$AppDatabase, $TodoTasksTable, TodoTask>),
    TodoTask,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TodoTasksTableTableManager get todoTasks =>
      $$TodoTasksTableTableManager(_db, _db.todoTasks);
}

mixin _$TodoTasksDaoMixin on DatabaseAccessor<AppDatabase> {
  $TodoTasksTable get todoTasks => attachedDatabase.todoTasks;
}
