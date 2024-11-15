import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/src/core/database/database.dart';

part 'only_task.freezed.dart';

@freezed
class OnlyTaskModel with _$OnlyTaskModel {
  const OnlyTaskModel._();
  factory OnlyTaskModel({
    required String id,
    required String text,
    @Default('basic') String importance,
    int? deadline,
    required bool done,
    String? color,
    required int createdAt,
    required int changedAt,
    required String lastUpdatedBy,
  }) = _TaskModel;

  factory OnlyTaskModel.fromDb({
    required TodoTask localTask,
  }) =>
      OnlyTaskModel(
        id: localTask.id,
        text: localTask.description,
        importance: localTask.importance,
        deadline: localTask.deadline,
        done: localTask.done,
        color: localTask.color,
        createdAt: localTask.createdAt,
        changedAt: localTask.changedAt,
        lastUpdatedBy: localTask.lastUpdatedBy,
      );

  TodoTasksCompanion toCompanion() => TodoTasksCompanion(
        id: Value(id),
        description: Value(text),
        importance: Value(importance),
        deadline: Value(deadline),
        done: Value(done),
        color: Value(color),
        createdAt: Value(createdAt),
        changedAt: Value(changedAt),
        lastUpdatedBy: Value(lastUpdatedBy),
      );
}
