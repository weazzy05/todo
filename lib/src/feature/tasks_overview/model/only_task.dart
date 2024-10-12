import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'only_task.freezed.dart';
part 'only_task.g.dart';

@freezed
class OnlyTaskModel with _$OnlyTaskModel {
  const OnlyTaskModel._();
  @HiveType(typeId: 0, adapterName: 'OnlyTaskAdapter')
  factory OnlyTaskModel({
    @HiveField(0) required String id,
    @HiveField(1) required String text,
    @Default('basic') @HiveField(2) String importance,
    @HiveField(3) int? deadline,
    @HiveField(4) required bool done,
    @HiveField(5) String? color,
    @JsonKey(name: 'created_at') @HiveField(6) required int createdAt,
    @JsonKey(name: 'changed_at') @HiveField(7) required int changedAt,
    @JsonKey(name: 'last_updated_by')
    @HiveField(8)
    required String lastUpdatedBy,
  }) = _TaskModel;

  factory OnlyTaskModel.fromJson(Map<String, dynamic> json) =>
      _$OnlyTaskModelFromJson(json);
}
