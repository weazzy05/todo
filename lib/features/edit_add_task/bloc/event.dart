part of 'bloc.dart';

@freezed
class EditAddTaskEvent with _$EditAddTaskEvent {
  const factory EditAddTaskEvent.titleChange(String title) =
      EditTaskTitleChanged;
  const factory EditAddTaskEvent.importanceChange(String importance) =
      EditTaskImportanceChanged;
  const factory EditAddTaskEvent.deadlineChange(DateTime? deadline) =
      EditTaskDeadlineChanged;
  const factory EditAddTaskEvent.taskSubmit() = EditTaskSubmitted;
  const factory EditAddTaskEvent.taskDelete() = EditTaskDeleted;
}
