part of 'bloc.dart';

enum InitializationStatus {
  initial,
  loading,
  success,
  failure,
  failedInternetCollection,
}

@freezed
class InitializationState with _$InitializationState {
  const InitializationState._();

  const factory InitializationState({
    @Default(InitializationStatus.initial) InitializationStatus status,
    @Default(0) int competedTasks,
    @Default([]) List<OnlyTaskModel> tasks,
    @Default(TaskFilter.all) TaskFilter filter,
  }) = _InitializationState;

  Iterable<OnlyTaskModel> get filteredTasks => filter.applyAll(tasks);
}
