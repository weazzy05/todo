part of 'bloc.dart';

enum SendingApproach {
  checkBox,
  dismissible,
}

@freezed
class InitializationEvent with _$InitializationEvent {
  const factory InitializationEvent.startInit() = StartInitializationEvent;
  const factory InitializationEvent.taskToggleComplete({
    required OnlyTaskModel task,
    required bool isCompleted,
    @Default(SendingApproach.dismissible) SendingApproach sendingApproach,
  }) = TaskCompletionToggledInitializationEvent;
  const factory InitializationEvent.filterChange(TaskFilter filter) =
      TaskFilterChangedInitializationEvent;
  const factory InitializationEvent.taskDelete(OnlyTaskModel task) =
      TaskDeleteInitializationEvent;
  const factory InitializationEvent.createOnMainScreen(String title) =
      FastTaskCreateInitializationEvent;
}
