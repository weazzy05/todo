import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/data/models/only_task.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class TaskResponseModel with _$TaskResponseModel {
  const TaskResponseModel._();
  @JsonSerializable(explicitToJson: true)
  factory TaskResponseModel({
    required String status,
    required OnlyTaskModel element,
    required int revision,
  }) = _TaskModel;

  factory TaskResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseModelFromJson(json);
}

@freezed
class TaskRequestModel with _$TaskRequestModel {
  const TaskRequestModel._();
  @JsonSerializable(explicitToJson: true)
  factory TaskRequestModel({
    required OnlyTaskModel element,
  }) = _TaskWithoutRevisionModel;

  factory TaskRequestModel.fromJson(Map<String, dynamic> json) =>
      _$TaskRequestModelFromJson(json);
}
