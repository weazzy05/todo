part of 'bloc.dart';

enum InitializationStatus {
  initial,
  loading,
  success,
  failure,
  failedInternetCollection,
}

@freezed
class TaskOverviewState with _$TaskOverviewState {
  const TaskOverviewState._();

  const factory TaskOverviewState({
    @Default(InitializationStatus.initial) InitializationStatus status,
    @Default(0) int competedTasks,
    @Default([]) List<OnlyTaskModel> tasks,
    @Default(TaskFilter.all) TaskFilter filter,
  }) = _TaskOverviewStateState;

  Iterable<OnlyTaskModel> get filteredTasks => filter.applyAll(tasks);
}
