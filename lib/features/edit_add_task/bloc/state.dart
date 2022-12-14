part of 'bloc.dart';

enum EditAddTaskStatus {
  initial,
  loading,
  success,
  failure,
  failedInternetCollection
}

extension EditAddTaskStatusX on EditAddTaskStatus {
  bool get isLoadingOrSuccess => [
        EditAddTaskStatus.loading,
        EditAddTaskStatus.success,
      ].contains(this);
}

@freezed
class EditAddTaskState with _$EditAddTaskState {
  const EditAddTaskState._();

  const factory EditAddTaskState({
    @Default(EditAddTaskStatus.initial) EditAddTaskStatus status,
    OnlyTaskModel? initialTask,
    @Default('') String title,
    String? importance,
    int? deadline,
  }) = _EditAddTaskState;

  bool get isNewTodo => initialTask == null;
}
