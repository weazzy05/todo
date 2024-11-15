// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskOverviewEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartInitializationEvent value) startInit,
    required TResult Function(_TaskCompletionToggledEvent value)
        taskCompletedToggled,
    required TResult Function(_TaskFilterChangedEvent value) filterChange,
    required TResult Function(_TaskDeleteEvent value) taskDelete,
    required TResult Function(_FastTaskCreateEvent value) createOnMainScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartInitializationEvent value)? startInit,
    TResult? Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult? Function(_TaskFilterChangedEvent value)? filterChange,
    TResult? Function(_TaskDeleteEvent value)? taskDelete,
    TResult? Function(_FastTaskCreateEvent value)? createOnMainScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartInitializationEvent value)? startInit,
    TResult Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult Function(_TaskFilterChangedEvent value)? filterChange,
    TResult Function(_TaskDeleteEvent value)? taskDelete,
    TResult Function(_FastTaskCreateEvent value)? createOnMainScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskOverviewEventCopyWith<$Res> {
  factory $TaskOverviewEventCopyWith(
          TaskOverviewEvent value, $Res Function(TaskOverviewEvent) then) =
      _$TaskOverviewEventCopyWithImpl<$Res, TaskOverviewEvent>;
}

/// @nodoc
class _$TaskOverviewEventCopyWithImpl<$Res, $Val extends TaskOverviewEvent>
    implements $TaskOverviewEventCopyWith<$Res> {
  _$TaskOverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartInitializationEventImplCopyWith<$Res> {
  factory _$$StartInitializationEventImplCopyWith(
          _$StartInitializationEventImpl value,
          $Res Function(_$StartInitializationEventImpl) then) =
      __$$StartInitializationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartInitializationEventImplCopyWithImpl<$Res>
    extends _$TaskOverviewEventCopyWithImpl<$Res,
        _$StartInitializationEventImpl>
    implements _$$StartInitializationEventImplCopyWith<$Res> {
  __$$StartInitializationEventImplCopyWithImpl(
      _$StartInitializationEventImpl _value,
      $Res Function(_$StartInitializationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartInitializationEventImpl implements _StartInitializationEvent {
  const _$StartInitializationEventImpl();

  @override
  String toString() {
    return 'TaskOverviewEvent.startInit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartInitializationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartInitializationEvent value) startInit,
    required TResult Function(_TaskCompletionToggledEvent value)
        taskCompletedToggled,
    required TResult Function(_TaskFilterChangedEvent value) filterChange,
    required TResult Function(_TaskDeleteEvent value) taskDelete,
    required TResult Function(_FastTaskCreateEvent value) createOnMainScreen,
  }) {
    return startInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartInitializationEvent value)? startInit,
    TResult? Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult? Function(_TaskFilterChangedEvent value)? filterChange,
    TResult? Function(_TaskDeleteEvent value)? taskDelete,
    TResult? Function(_FastTaskCreateEvent value)? createOnMainScreen,
  }) {
    return startInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartInitializationEvent value)? startInit,
    TResult Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult Function(_TaskFilterChangedEvent value)? filterChange,
    TResult Function(_TaskDeleteEvent value)? taskDelete,
    TResult Function(_FastTaskCreateEvent value)? createOnMainScreen,
    required TResult orElse(),
  }) {
    if (startInit != null) {
      return startInit(this);
    }
    return orElse();
  }
}

abstract class _StartInitializationEvent implements TaskOverviewEvent {
  const factory _StartInitializationEvent() = _$StartInitializationEventImpl;
}

/// @nodoc
abstract class _$$TaskCompletionToggledEventImplCopyWith<$Res> {
  factory _$$TaskCompletionToggledEventImplCopyWith(
          _$TaskCompletionToggledEventImpl value,
          $Res Function(_$TaskCompletionToggledEventImpl) then) =
      __$$TaskCompletionToggledEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {OnlyTaskModel task, bool isCompleted, SendingApproach sendingApproach});

  $OnlyTaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskCompletionToggledEventImplCopyWithImpl<$Res>
    extends _$TaskOverviewEventCopyWithImpl<$Res,
        _$TaskCompletionToggledEventImpl>
    implements _$$TaskCompletionToggledEventImplCopyWith<$Res> {
  __$$TaskCompletionToggledEventImplCopyWithImpl(
      _$TaskCompletionToggledEventImpl _value,
      $Res Function(_$TaskCompletionToggledEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? isCompleted = null,
    Object? sendingApproach = null,
  }) {
    return _then(_$TaskCompletionToggledEventImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingApproach: null == sendingApproach
          ? _value.sendingApproach
          : sendingApproach // ignore: cast_nullable_to_non_nullable
              as SendingApproach,
    ));
  }

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OnlyTaskModelCopyWith<$Res> get task {
    return $OnlyTaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$TaskCompletionToggledEventImpl implements _TaskCompletionToggledEvent {
  const _$TaskCompletionToggledEventImpl(
      {required this.task,
      required this.isCompleted,
      this.sendingApproach = SendingApproach.dismissible});

  @override
  final OnlyTaskModel task;
  @override
  final bool isCompleted;
  @override
  @JsonKey()
  final SendingApproach sendingApproach;

  @override
  String toString() {
    return 'TaskOverviewEvent.taskCompletedToggled(task: $task, isCompleted: $isCompleted, sendingApproach: $sendingApproach)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCompletionToggledEventImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.sendingApproach, sendingApproach) ||
                other.sendingApproach == sendingApproach));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, task, isCompleted, sendingApproach);

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskCompletionToggledEventImplCopyWith<_$TaskCompletionToggledEventImpl>
      get copyWith => __$$TaskCompletionToggledEventImplCopyWithImpl<
          _$TaskCompletionToggledEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartInitializationEvent value) startInit,
    required TResult Function(_TaskCompletionToggledEvent value)
        taskCompletedToggled,
    required TResult Function(_TaskFilterChangedEvent value) filterChange,
    required TResult Function(_TaskDeleteEvent value) taskDelete,
    required TResult Function(_FastTaskCreateEvent value) createOnMainScreen,
  }) {
    return taskCompletedToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartInitializationEvent value)? startInit,
    TResult? Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult? Function(_TaskFilterChangedEvent value)? filterChange,
    TResult? Function(_TaskDeleteEvent value)? taskDelete,
    TResult? Function(_FastTaskCreateEvent value)? createOnMainScreen,
  }) {
    return taskCompletedToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartInitializationEvent value)? startInit,
    TResult Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult Function(_TaskFilterChangedEvent value)? filterChange,
    TResult Function(_TaskDeleteEvent value)? taskDelete,
    TResult Function(_FastTaskCreateEvent value)? createOnMainScreen,
    required TResult orElse(),
  }) {
    if (taskCompletedToggled != null) {
      return taskCompletedToggled(this);
    }
    return orElse();
  }
}

abstract class _TaskCompletionToggledEvent implements TaskOverviewEvent {
  const factory _TaskCompletionToggledEvent(
          {required final OnlyTaskModel task,
          required final bool isCompleted,
          final SendingApproach sendingApproach}) =
      _$TaskCompletionToggledEventImpl;

  OnlyTaskModel get task;
  bool get isCompleted;
  SendingApproach get sendingApproach;

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskCompletionToggledEventImplCopyWith<_$TaskCompletionToggledEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskFilterChangedEventImplCopyWith<$Res> {
  factory _$$TaskFilterChangedEventImplCopyWith(
          _$TaskFilterChangedEventImpl value,
          $Res Function(_$TaskFilterChangedEventImpl) then) =
      __$$TaskFilterChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskFilter filter});
}

/// @nodoc
class __$$TaskFilterChangedEventImplCopyWithImpl<$Res>
    extends _$TaskOverviewEventCopyWithImpl<$Res, _$TaskFilterChangedEventImpl>
    implements _$$TaskFilterChangedEventImplCopyWith<$Res> {
  __$$TaskFilterChangedEventImplCopyWithImpl(
      _$TaskFilterChangedEventImpl _value,
      $Res Function(_$TaskFilterChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$TaskFilterChangedEventImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
    ));
  }
}

/// @nodoc

class _$TaskFilterChangedEventImpl implements _TaskFilterChangedEvent {
  const _$TaskFilterChangedEventImpl(this.filter);

  @override
  final TaskFilter filter;

  @override
  String toString() {
    return 'TaskOverviewEvent.filterChange(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFilterChangedEventImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskFilterChangedEventImplCopyWith<_$TaskFilterChangedEventImpl>
      get copyWith => __$$TaskFilterChangedEventImplCopyWithImpl<
          _$TaskFilterChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartInitializationEvent value) startInit,
    required TResult Function(_TaskCompletionToggledEvent value)
        taskCompletedToggled,
    required TResult Function(_TaskFilterChangedEvent value) filterChange,
    required TResult Function(_TaskDeleteEvent value) taskDelete,
    required TResult Function(_FastTaskCreateEvent value) createOnMainScreen,
  }) {
    return filterChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartInitializationEvent value)? startInit,
    TResult? Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult? Function(_TaskFilterChangedEvent value)? filterChange,
    TResult? Function(_TaskDeleteEvent value)? taskDelete,
    TResult? Function(_FastTaskCreateEvent value)? createOnMainScreen,
  }) {
    return filterChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartInitializationEvent value)? startInit,
    TResult Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult Function(_TaskFilterChangedEvent value)? filterChange,
    TResult Function(_TaskDeleteEvent value)? taskDelete,
    TResult Function(_FastTaskCreateEvent value)? createOnMainScreen,
    required TResult orElse(),
  }) {
    if (filterChange != null) {
      return filterChange(this);
    }
    return orElse();
  }
}

abstract class _TaskFilterChangedEvent implements TaskOverviewEvent {
  const factory _TaskFilterChangedEvent(final TaskFilter filter) =
      _$TaskFilterChangedEventImpl;

  TaskFilter get filter;

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskFilterChangedEventImplCopyWith<_$TaskFilterChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDeleteEventImplCopyWith<$Res> {
  factory _$$TaskDeleteEventImplCopyWith(_$TaskDeleteEventImpl value,
          $Res Function(_$TaskDeleteEventImpl) then) =
      __$$TaskDeleteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OnlyTaskModel task});

  $OnlyTaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskDeleteEventImplCopyWithImpl<$Res>
    extends _$TaskOverviewEventCopyWithImpl<$Res, _$TaskDeleteEventImpl>
    implements _$$TaskDeleteEventImplCopyWith<$Res> {
  __$$TaskDeleteEventImplCopyWithImpl(
      _$TaskDeleteEventImpl _value, $Res Function(_$TaskDeleteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskDeleteEventImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
    ));
  }

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OnlyTaskModelCopyWith<$Res> get task {
    return $OnlyTaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$TaskDeleteEventImpl implements _TaskDeleteEvent {
  const _$TaskDeleteEventImpl(this.task);

  @override
  final OnlyTaskModel task;

  @override
  String toString() {
    return 'TaskOverviewEvent.taskDelete(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDeleteEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDeleteEventImplCopyWith<_$TaskDeleteEventImpl> get copyWith =>
      __$$TaskDeleteEventImplCopyWithImpl<_$TaskDeleteEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartInitializationEvent value) startInit,
    required TResult Function(_TaskCompletionToggledEvent value)
        taskCompletedToggled,
    required TResult Function(_TaskFilterChangedEvent value) filterChange,
    required TResult Function(_TaskDeleteEvent value) taskDelete,
    required TResult Function(_FastTaskCreateEvent value) createOnMainScreen,
  }) {
    return taskDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartInitializationEvent value)? startInit,
    TResult? Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult? Function(_TaskFilterChangedEvent value)? filterChange,
    TResult? Function(_TaskDeleteEvent value)? taskDelete,
    TResult? Function(_FastTaskCreateEvent value)? createOnMainScreen,
  }) {
    return taskDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartInitializationEvent value)? startInit,
    TResult Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult Function(_TaskFilterChangedEvent value)? filterChange,
    TResult Function(_TaskDeleteEvent value)? taskDelete,
    TResult Function(_FastTaskCreateEvent value)? createOnMainScreen,
    required TResult orElse(),
  }) {
    if (taskDelete != null) {
      return taskDelete(this);
    }
    return orElse();
  }
}

abstract class _TaskDeleteEvent implements TaskOverviewEvent {
  const factory _TaskDeleteEvent(final OnlyTaskModel task) =
      _$TaskDeleteEventImpl;

  OnlyTaskModel get task;

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskDeleteEventImplCopyWith<_$TaskDeleteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FastTaskCreateEventImplCopyWith<$Res> {
  factory _$$FastTaskCreateEventImplCopyWith(_$FastTaskCreateEventImpl value,
          $Res Function(_$FastTaskCreateEventImpl) then) =
      __$$FastTaskCreateEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$FastTaskCreateEventImplCopyWithImpl<$Res>
    extends _$TaskOverviewEventCopyWithImpl<$Res, _$FastTaskCreateEventImpl>
    implements _$$FastTaskCreateEventImplCopyWith<$Res> {
  __$$FastTaskCreateEventImplCopyWithImpl(_$FastTaskCreateEventImpl _value,
      $Res Function(_$FastTaskCreateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$FastTaskCreateEventImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FastTaskCreateEventImpl implements _FastTaskCreateEvent {
  const _$FastTaskCreateEventImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'TaskOverviewEvent.createOnMainScreen(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FastTaskCreateEventImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FastTaskCreateEventImplCopyWith<_$FastTaskCreateEventImpl> get copyWith =>
      __$$FastTaskCreateEventImplCopyWithImpl<_$FastTaskCreateEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartInitializationEvent value) startInit,
    required TResult Function(_TaskCompletionToggledEvent value)
        taskCompletedToggled,
    required TResult Function(_TaskFilterChangedEvent value) filterChange,
    required TResult Function(_TaskDeleteEvent value) taskDelete,
    required TResult Function(_FastTaskCreateEvent value) createOnMainScreen,
  }) {
    return createOnMainScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartInitializationEvent value)? startInit,
    TResult? Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult? Function(_TaskFilterChangedEvent value)? filterChange,
    TResult? Function(_TaskDeleteEvent value)? taskDelete,
    TResult? Function(_FastTaskCreateEvent value)? createOnMainScreen,
  }) {
    return createOnMainScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartInitializationEvent value)? startInit,
    TResult Function(_TaskCompletionToggledEvent value)? taskCompletedToggled,
    TResult Function(_TaskFilterChangedEvent value)? filterChange,
    TResult Function(_TaskDeleteEvent value)? taskDelete,
    TResult Function(_FastTaskCreateEvent value)? createOnMainScreen,
    required TResult orElse(),
  }) {
    if (createOnMainScreen != null) {
      return createOnMainScreen(this);
    }
    return orElse();
  }
}

abstract class _FastTaskCreateEvent implements TaskOverviewEvent {
  const factory _FastTaskCreateEvent(final String title) =
      _$FastTaskCreateEventImpl;

  String get title;

  /// Create a copy of TaskOverviewEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FastTaskCreateEventImplCopyWith<_$FastTaskCreateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskOverviewState {
  InitializationStatus get status => throw _privateConstructorUsedError;
  int get competedTasks => throw _privateConstructorUsedError;
  List<OnlyTaskModel> get tasks => throw _privateConstructorUsedError;
  TaskFilter get filter => throw _privateConstructorUsedError;

  /// Create a copy of TaskOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskOverviewStateCopyWith<TaskOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskOverviewStateCopyWith<$Res> {
  factory $TaskOverviewStateCopyWith(
          TaskOverviewState value, $Res Function(TaskOverviewState) then) =
      _$TaskOverviewStateCopyWithImpl<$Res, TaskOverviewState>;
  @useResult
  $Res call(
      {InitializationStatus status,
      int competedTasks,
      List<OnlyTaskModel> tasks,
      TaskFilter filter});
}

/// @nodoc
class _$TaskOverviewStateCopyWithImpl<$Res, $Val extends TaskOverviewState>
    implements $TaskOverviewStateCopyWith<$Res> {
  _$TaskOverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? competedTasks = null,
    Object? tasks = null,
    Object? filter = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InitializationStatus,
      competedTasks: null == competedTasks
          ? _value.competedTasks
          : competedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskOverviewStateStateImplCopyWith<$Res>
    implements $TaskOverviewStateCopyWith<$Res> {
  factory _$$TaskOverviewStateStateImplCopyWith(
          _$TaskOverviewStateStateImpl value,
          $Res Function(_$TaskOverviewStateStateImpl) then) =
      __$$TaskOverviewStateStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InitializationStatus status,
      int competedTasks,
      List<OnlyTaskModel> tasks,
      TaskFilter filter});
}

/// @nodoc
class __$$TaskOverviewStateStateImplCopyWithImpl<$Res>
    extends _$TaskOverviewStateCopyWithImpl<$Res, _$TaskOverviewStateStateImpl>
    implements _$$TaskOverviewStateStateImplCopyWith<$Res> {
  __$$TaskOverviewStateStateImplCopyWithImpl(
      _$TaskOverviewStateStateImpl _value,
      $Res Function(_$TaskOverviewStateStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? competedTasks = null,
    Object? tasks = null,
    Object? filter = null,
  }) {
    return _then(_$TaskOverviewStateStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InitializationStatus,
      competedTasks: null == competedTasks
          ? _value.competedTasks
          : competedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
      filter: null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
    ));
  }
}

/// @nodoc

class _$TaskOverviewStateStateImpl extends _TaskOverviewStateState {
  const _$TaskOverviewStateStateImpl(
      {this.status = InitializationStatus.initial,
      this.competedTasks = 0,
      final List<OnlyTaskModel> tasks = const [],
      this.filter = TaskFilter.all})
      : _tasks = tasks,
        super._();

  @override
  @JsonKey()
  final InitializationStatus status;
  @override
  @JsonKey()
  final int competedTasks;
  final List<OnlyTaskModel> _tasks;
  @override
  @JsonKey()
  List<OnlyTaskModel> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final TaskFilter filter;

  @override
  String toString() {
    return 'TaskOverviewState(status: $status, competedTasks: $competedTasks, tasks: $tasks, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskOverviewStateStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.competedTasks, competedTasks) ||
                other.competedTasks == competedTasks) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, competedTasks,
      const DeepCollectionEquality().hash(_tasks), filter);

  /// Create a copy of TaskOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskOverviewStateStateImplCopyWith<_$TaskOverviewStateStateImpl>
      get copyWith => __$$TaskOverviewStateStateImplCopyWithImpl<
          _$TaskOverviewStateStateImpl>(this, _$identity);
}

abstract class _TaskOverviewStateState extends TaskOverviewState {
  const factory _TaskOverviewStateState(
      {final InitializationStatus status,
      final int competedTasks,
      final List<OnlyTaskModel> tasks,
      final TaskFilter filter}) = _$TaskOverviewStateStateImpl;
  const _TaskOverviewStateState._() : super._();

  @override
  InitializationStatus get status;
  @override
  int get competedTasks;
  @override
  List<OnlyTaskModel> get tasks;
  @override
  TaskFilter get filter;

  /// Create a copy of TaskOverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskOverviewStateStateImplCopyWith<_$TaskOverviewStateStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
