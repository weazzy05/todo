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
mixin _$InitializationEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartInitializationEvent value) startInit,
    required TResult Function(TaskCompletionToggledInitializationEvent value)
        taskToggleComplete,
    required TResult Function(TaskFilterChangedInitializationEvent value)
        filterChange,
    required TResult Function(TaskDeleteInitializationEvent value) taskDelete,
    required TResult Function(FastTaskCreateInitializationEvent value)
        createOnMainScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartInitializationEvent value)? startInit,
    TResult? Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult? Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult? Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult? Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializationEventCopyWith<$Res> {
  factory $InitializationEventCopyWith(
          InitializationEvent value, $Res Function(InitializationEvent) then) =
      _$InitializationEventCopyWithImpl<$Res, InitializationEvent>;
}

/// @nodoc
class _$InitializationEventCopyWithImpl<$Res, $Val extends InitializationEvent>
    implements $InitializationEventCopyWith<$Res> {
  _$InitializationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitializationEvent
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
    extends _$InitializationEventCopyWithImpl<$Res,
        _$StartInitializationEventImpl>
    implements _$$StartInitializationEventImplCopyWith<$Res> {
  __$$StartInitializationEventImplCopyWithImpl(
      _$StartInitializationEventImpl _value,
      $Res Function(_$StartInitializationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartInitializationEventImpl implements StartInitializationEvent {
  const _$StartInitializationEventImpl();

  @override
  String toString() {
    return 'InitializationEvent.startInit()';
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
    required TResult Function(StartInitializationEvent value) startInit,
    required TResult Function(TaskCompletionToggledInitializationEvent value)
        taskToggleComplete,
    required TResult Function(TaskFilterChangedInitializationEvent value)
        filterChange,
    required TResult Function(TaskDeleteInitializationEvent value) taskDelete,
    required TResult Function(FastTaskCreateInitializationEvent value)
        createOnMainScreen,
  }) {
    return startInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartInitializationEvent value)? startInit,
    TResult? Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult? Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult? Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult? Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
  }) {
    return startInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
    required TResult orElse(),
  }) {
    if (startInit != null) {
      return startInit(this);
    }
    return orElse();
  }
}

abstract class StartInitializationEvent implements InitializationEvent {
  const factory StartInitializationEvent() = _$StartInitializationEventImpl;
}

/// @nodoc
abstract class _$$TaskCompletionToggledInitializationEventImplCopyWith<$Res> {
  factory _$$TaskCompletionToggledInitializationEventImplCopyWith(
          _$TaskCompletionToggledInitializationEventImpl value,
          $Res Function(_$TaskCompletionToggledInitializationEventImpl) then) =
      __$$TaskCompletionToggledInitializationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {OnlyTaskModel task, bool isCompleted, SendingApproach sendingApproach});

  $OnlyTaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskCompletionToggledInitializationEventImplCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res,
        _$TaskCompletionToggledInitializationEventImpl>
    implements _$$TaskCompletionToggledInitializationEventImplCopyWith<$Res> {
  __$$TaskCompletionToggledInitializationEventImplCopyWithImpl(
      _$TaskCompletionToggledInitializationEventImpl _value,
      $Res Function(_$TaskCompletionToggledInitializationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? isCompleted = null,
    Object? sendingApproach = null,
  }) {
    return _then(_$TaskCompletionToggledInitializationEventImpl(
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

  /// Create a copy of InitializationEvent
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

class _$TaskCompletionToggledInitializationEventImpl
    implements TaskCompletionToggledInitializationEvent {
  const _$TaskCompletionToggledInitializationEventImpl(
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
    return 'InitializationEvent.taskToggleComplete(task: $task, isCompleted: $isCompleted, sendingApproach: $sendingApproach)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCompletionToggledInitializationEventImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.sendingApproach, sendingApproach) ||
                other.sendingApproach == sendingApproach));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, task, isCompleted, sendingApproach);

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskCompletionToggledInitializationEventImplCopyWith<
          _$TaskCompletionToggledInitializationEventImpl>
      get copyWith =>
          __$$TaskCompletionToggledInitializationEventImplCopyWithImpl<
              _$TaskCompletionToggledInitializationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartInitializationEvent value) startInit,
    required TResult Function(TaskCompletionToggledInitializationEvent value)
        taskToggleComplete,
    required TResult Function(TaskFilterChangedInitializationEvent value)
        filterChange,
    required TResult Function(TaskDeleteInitializationEvent value) taskDelete,
    required TResult Function(FastTaskCreateInitializationEvent value)
        createOnMainScreen,
  }) {
    return taskToggleComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartInitializationEvent value)? startInit,
    TResult? Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult? Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult? Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult? Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
  }) {
    return taskToggleComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
    required TResult orElse(),
  }) {
    if (taskToggleComplete != null) {
      return taskToggleComplete(this);
    }
    return orElse();
  }
}

abstract class TaskCompletionToggledInitializationEvent
    implements InitializationEvent {
  const factory TaskCompletionToggledInitializationEvent(
          {required final OnlyTaskModel task,
          required final bool isCompleted,
          final SendingApproach sendingApproach}) =
      _$TaskCompletionToggledInitializationEventImpl;

  OnlyTaskModel get task;
  bool get isCompleted;
  SendingApproach get sendingApproach;

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskCompletionToggledInitializationEventImplCopyWith<
          _$TaskCompletionToggledInitializationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskFilterChangedInitializationEventImplCopyWith<$Res> {
  factory _$$TaskFilterChangedInitializationEventImplCopyWith(
          _$TaskFilterChangedInitializationEventImpl value,
          $Res Function(_$TaskFilterChangedInitializationEventImpl) then) =
      __$$TaskFilterChangedInitializationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskFilter filter});
}

/// @nodoc
class __$$TaskFilterChangedInitializationEventImplCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res,
        _$TaskFilterChangedInitializationEventImpl>
    implements _$$TaskFilterChangedInitializationEventImplCopyWith<$Res> {
  __$$TaskFilterChangedInitializationEventImplCopyWithImpl(
      _$TaskFilterChangedInitializationEventImpl _value,
      $Res Function(_$TaskFilterChangedInitializationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filter = null,
  }) {
    return _then(_$TaskFilterChangedInitializationEventImpl(
      null == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
    ));
  }
}

/// @nodoc

class _$TaskFilterChangedInitializationEventImpl
    implements TaskFilterChangedInitializationEvent {
  const _$TaskFilterChangedInitializationEventImpl(this.filter);

  @override
  final TaskFilter filter;

  @override
  String toString() {
    return 'InitializationEvent.filterChange(filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFilterChangedInitializationEventImpl &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filter);

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskFilterChangedInitializationEventImplCopyWith<
          _$TaskFilterChangedInitializationEventImpl>
      get copyWith => __$$TaskFilterChangedInitializationEventImplCopyWithImpl<
          _$TaskFilterChangedInitializationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartInitializationEvent value) startInit,
    required TResult Function(TaskCompletionToggledInitializationEvent value)
        taskToggleComplete,
    required TResult Function(TaskFilterChangedInitializationEvent value)
        filterChange,
    required TResult Function(TaskDeleteInitializationEvent value) taskDelete,
    required TResult Function(FastTaskCreateInitializationEvent value)
        createOnMainScreen,
  }) {
    return filterChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartInitializationEvent value)? startInit,
    TResult? Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult? Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult? Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult? Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
  }) {
    return filterChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
    required TResult orElse(),
  }) {
    if (filterChange != null) {
      return filterChange(this);
    }
    return orElse();
  }
}

abstract class TaskFilterChangedInitializationEvent
    implements InitializationEvent {
  const factory TaskFilterChangedInitializationEvent(final TaskFilter filter) =
      _$TaskFilterChangedInitializationEventImpl;

  TaskFilter get filter;

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskFilterChangedInitializationEventImplCopyWith<
          _$TaskFilterChangedInitializationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDeleteInitializationEventImplCopyWith<$Res> {
  factory _$$TaskDeleteInitializationEventImplCopyWith(
          _$TaskDeleteInitializationEventImpl value,
          $Res Function(_$TaskDeleteInitializationEventImpl) then) =
      __$$TaskDeleteInitializationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OnlyTaskModel task});

  $OnlyTaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskDeleteInitializationEventImplCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res,
        _$TaskDeleteInitializationEventImpl>
    implements _$$TaskDeleteInitializationEventImplCopyWith<$Res> {
  __$$TaskDeleteInitializationEventImplCopyWithImpl(
      _$TaskDeleteInitializationEventImpl _value,
      $Res Function(_$TaskDeleteInitializationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskDeleteInitializationEventImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
    ));
  }

  /// Create a copy of InitializationEvent
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

class _$TaskDeleteInitializationEventImpl
    implements TaskDeleteInitializationEvent {
  const _$TaskDeleteInitializationEventImpl(this.task);

  @override
  final OnlyTaskModel task;

  @override
  String toString() {
    return 'InitializationEvent.taskDelete(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDeleteInitializationEventImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDeleteInitializationEventImplCopyWith<
          _$TaskDeleteInitializationEventImpl>
      get copyWith => __$$TaskDeleteInitializationEventImplCopyWithImpl<
          _$TaskDeleteInitializationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartInitializationEvent value) startInit,
    required TResult Function(TaskCompletionToggledInitializationEvent value)
        taskToggleComplete,
    required TResult Function(TaskFilterChangedInitializationEvent value)
        filterChange,
    required TResult Function(TaskDeleteInitializationEvent value) taskDelete,
    required TResult Function(FastTaskCreateInitializationEvent value)
        createOnMainScreen,
  }) {
    return taskDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartInitializationEvent value)? startInit,
    TResult? Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult? Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult? Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult? Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
  }) {
    return taskDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
    required TResult orElse(),
  }) {
    if (taskDelete != null) {
      return taskDelete(this);
    }
    return orElse();
  }
}

abstract class TaskDeleteInitializationEvent implements InitializationEvent {
  const factory TaskDeleteInitializationEvent(final OnlyTaskModel task) =
      _$TaskDeleteInitializationEventImpl;

  OnlyTaskModel get task;

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskDeleteInitializationEventImplCopyWith<
          _$TaskDeleteInitializationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FastTaskCreateInitializationEventImplCopyWith<$Res> {
  factory _$$FastTaskCreateInitializationEventImplCopyWith(
          _$FastTaskCreateInitializationEventImpl value,
          $Res Function(_$FastTaskCreateInitializationEventImpl) then) =
      __$$FastTaskCreateInitializationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$FastTaskCreateInitializationEventImplCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res,
        _$FastTaskCreateInitializationEventImpl>
    implements _$$FastTaskCreateInitializationEventImplCopyWith<$Res> {
  __$$FastTaskCreateInitializationEventImplCopyWithImpl(
      _$FastTaskCreateInitializationEventImpl _value,
      $Res Function(_$FastTaskCreateInitializationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$FastTaskCreateInitializationEventImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FastTaskCreateInitializationEventImpl
    implements FastTaskCreateInitializationEvent {
  const _$FastTaskCreateInitializationEventImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'InitializationEvent.createOnMainScreen(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FastTaskCreateInitializationEventImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FastTaskCreateInitializationEventImplCopyWith<
          _$FastTaskCreateInitializationEventImpl>
      get copyWith => __$$FastTaskCreateInitializationEventImplCopyWithImpl<
          _$FastTaskCreateInitializationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartInitializationEvent value) startInit,
    required TResult Function(TaskCompletionToggledInitializationEvent value)
        taskToggleComplete,
    required TResult Function(TaskFilterChangedInitializationEvent value)
        filterChange,
    required TResult Function(TaskDeleteInitializationEvent value) taskDelete,
    required TResult Function(FastTaskCreateInitializationEvent value)
        createOnMainScreen,
  }) {
    return createOnMainScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartInitializationEvent value)? startInit,
    TResult? Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult? Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult? Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult? Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
  }) {
    return createOnMainScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
        createOnMainScreen,
    required TResult orElse(),
  }) {
    if (createOnMainScreen != null) {
      return createOnMainScreen(this);
    }
    return orElse();
  }
}

abstract class FastTaskCreateInitializationEvent
    implements InitializationEvent {
  const factory FastTaskCreateInitializationEvent(final String title) =
      _$FastTaskCreateInitializationEventImpl;

  String get title;

  /// Create a copy of InitializationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FastTaskCreateInitializationEventImplCopyWith<
          _$FastTaskCreateInitializationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitializationState {
  InitializationStatus get status => throw _privateConstructorUsedError;
  int get competedTasks => throw _privateConstructorUsedError;
  List<OnlyTaskModel> get tasks => throw _privateConstructorUsedError;
  TaskFilter get filter => throw _privateConstructorUsedError;

  /// Create a copy of InitializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitializationStateCopyWith<InitializationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializationStateCopyWith<$Res> {
  factory $InitializationStateCopyWith(
          InitializationState value, $Res Function(InitializationState) then) =
      _$InitializationStateCopyWithImpl<$Res, InitializationState>;
  @useResult
  $Res call(
      {InitializationStatus status,
      int competedTasks,
      List<OnlyTaskModel> tasks,
      TaskFilter filter});
}

/// @nodoc
class _$InitializationStateCopyWithImpl<$Res, $Val extends InitializationState>
    implements $InitializationStateCopyWith<$Res> {
  _$InitializationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitializationState
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
abstract class _$$InitializationStateImplCopyWith<$Res>
    implements $InitializationStateCopyWith<$Res> {
  factory _$$InitializationStateImplCopyWith(_$InitializationStateImpl value,
          $Res Function(_$InitializationStateImpl) then) =
      __$$InitializationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {InitializationStatus status,
      int competedTasks,
      List<OnlyTaskModel> tasks,
      TaskFilter filter});
}

/// @nodoc
class __$$InitializationStateImplCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res, _$InitializationStateImpl>
    implements _$$InitializationStateImplCopyWith<$Res> {
  __$$InitializationStateImplCopyWithImpl(_$InitializationStateImpl _value,
      $Res Function(_$InitializationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitializationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? competedTasks = null,
    Object? tasks = null,
    Object? filter = null,
  }) {
    return _then(_$InitializationStateImpl(
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

class _$InitializationStateImpl extends _InitializationState {
  const _$InitializationStateImpl(
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
    return 'InitializationState(status: $status, competedTasks: $competedTasks, tasks: $tasks, filter: $filter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.competedTasks, competedTasks) ||
                other.competedTasks == competedTasks) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, competedTasks,
      const DeepCollectionEquality().hash(_tasks), filter);

  /// Create a copy of InitializationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializationStateImplCopyWith<_$InitializationStateImpl> get copyWith =>
      __$$InitializationStateImplCopyWithImpl<_$InitializationStateImpl>(
          this, _$identity);
}

abstract class _InitializationState extends InitializationState {
  const factory _InitializationState(
      {final InitializationStatus status,
      final int competedTasks,
      final List<OnlyTaskModel> tasks,
      final TaskFilter filter}) = _$InitializationStateImpl;
  const _InitializationState._() : super._();

  @override
  InitializationStatus get status;
  @override
  int get competedTasks;
  @override
  List<OnlyTaskModel> get tasks;
  @override
  TaskFilter get filter;

  /// Create a copy of InitializationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitializationStateImplCopyWith<_$InitializationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
