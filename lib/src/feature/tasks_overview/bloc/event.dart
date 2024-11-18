part of 'bloc.dart';

enum SendingApproach {
  checkBox,
  dismissible,
}

@freezed
class TaskOverviewEvent with _$TaskOverviewEvent {
  const factory TaskOverviewEvent.startInit() = _StartInitializationEvent;
  const factory TaskOverviewEvent.taskCompletedToggled({
    required OnlyTaskModel task,
    required bool isCompleted,
    @Default(SendingApproach.dismissible) SendingApproach sendingApproach,
  }) = _TaskCompletionToggledEvent;
  const factory TaskOverviewEvent.filterChange(TaskFilter filter) =
      _TaskFilterChangedEvent;
  const factory TaskOverviewEvent.taskDelete(OnlyTaskModel task) =
      _TaskDeleteEvent;
  const factory TaskOverviewEvent.createOnMainScreen(String title) =
      _FastTaskCreateEvent;
}
