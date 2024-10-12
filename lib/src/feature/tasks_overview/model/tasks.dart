import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/src/feature/tasks_overview/model/only_task.dart';

part 'tasks.freezed.dart';
part 'tasks.g.dart';

@freezed
class TasksResponseModel with _$TasksResponseModel {
  const TasksResponseModel._();
  @JsonSerializable(explicitToJson: true)
  factory TasksResponseModel({
    required String status,
    required List<OnlyTaskModel> list,
    required int revision,
  }) = _TasksModel;

  factory TasksResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TasksResponseModelFromJson(json);
}

@freezed
class TasksRequestModel with _$TasksRequestModel {
  const TasksRequestModel._();
  @JsonSerializable(explicitToJson: true)
  factory TasksRequestModel({
    required List<OnlyTaskModel> list,
  }) = _TasksWithoutRevisionModel;

  factory TasksRequestModel.fromJson(Map<String, dynamic> json) =>
      _$TasksRequestModelFromJson(json);
}
