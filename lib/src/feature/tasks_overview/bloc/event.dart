part of 'bloc.dart';

enum SendingApproach {
  checkBox,
  dismissible,
}

@freezed
class TaskOverviewEvent with _$TaskOverviewEvent {
  const factory TaskOverviewEvent.startInit() = StartInitializationEvent;
  const factory TaskOverviewEvent.taskCompletedToggled({
    required OnlyTaskModel task,
    required bool isCompleted,
    @Default(SendingApproach.dismissible) SendingApproach sendingApproach,
  }) = TaskCompletionToggledEvent;
  const factory TaskOverviewEvent.filterChange(TaskFilter filter) =
      TaskFilterChangedEvent;
  const factory TaskOverviewEvent.taskDelete(OnlyTaskModel task) =
      TaskDeleteEvent;
  const factory TaskOverviewEvent.createOnMainScreen(String title) =
      FastTaskCreateEvent;
}
