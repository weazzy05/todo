// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitializationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startInit,
    required TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)
        taskToggleComplete,
    required TResult Function(TaskFilter filter) filterChange,
    required TResult Function(OnlyTaskModel task) taskDelete,
    required TResult Function(String title) createOnMainScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
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
      _$InitializationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializationEventCopyWithImpl<$Res>
    implements $InitializationEventCopyWith<$Res> {
  _$InitializationEventCopyWithImpl(this._value, this._then);

  final InitializationEvent _value;
  // ignore: unused_field
  final $Res Function(InitializationEvent) _then;
}

/// @nodoc
abstract class _$$StartInitializationEventCopyWith<$Res> {
  factory _$$StartInitializationEventCopyWith(_$StartInitializationEvent value,
          $Res Function(_$StartInitializationEvent) then) =
      __$$StartInitializationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartInitializationEventCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res>
    implements _$$StartInitializationEventCopyWith<$Res> {
  __$$StartInitializationEventCopyWithImpl(_$StartInitializationEvent _value,
      $Res Function(_$StartInitializationEvent) _then)
      : super(_value, (v) => _then(v as _$StartInitializationEvent));

  @override
  _$StartInitializationEvent get _value =>
      super._value as _$StartInitializationEvent;
}

/// @nodoc

class _$StartInitializationEvent implements StartInitializationEvent {
  const _$StartInitializationEvent();

  @override
  String toString() {
    return 'InitializationEvent.startInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartInitializationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startInit,
    required TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)
        taskToggleComplete,
    required TResult Function(TaskFilter filter) filterChange,
    required TResult Function(OnlyTaskModel task) taskDelete,
    required TResult Function(String title) createOnMainScreen,
  }) {
    return startInit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
  }) {
    return startInit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
    required TResult orElse(),
  }) {
    if (startInit != null) {
      return startInit();
    }
    return orElse();
  }

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
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
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
  const factory StartInitializationEvent() = _$StartInitializationEvent;
}

/// @nodoc
abstract class _$$TaskCompletionToggledInitializationEventCopyWith<$Res> {
  factory _$$TaskCompletionToggledInitializationEventCopyWith(
          _$TaskCompletionToggledInitializationEvent value,
          $Res Function(_$TaskCompletionToggledInitializationEvent) then) =
      __$$TaskCompletionToggledInitializationEventCopyWithImpl<$Res>;
  $Res call(
      {OnlyTaskModel task, bool isCompleted, SendingApproach sendingApproach});

  $OnlyTaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskCompletionToggledInitializationEventCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res>
    implements _$$TaskCompletionToggledInitializationEventCopyWith<$Res> {
  __$$TaskCompletionToggledInitializationEventCopyWithImpl(
      _$TaskCompletionToggledInitializationEvent _value,
      $Res Function(_$TaskCompletionToggledInitializationEvent) _then)
      : super(_value,
            (v) => _then(v as _$TaskCompletionToggledInitializationEvent));

  @override
  _$TaskCompletionToggledInitializationEvent get _value =>
      super._value as _$TaskCompletionToggledInitializationEvent;

  @override
  $Res call({
    Object? task = freezed,
    Object? isCompleted = freezed,
    Object? sendingApproach = freezed,
  }) {
    return _then(_$TaskCompletionToggledInitializationEvent(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      sendingApproach: sendingApproach == freezed
          ? _value.sendingApproach
          : sendingApproach // ignore: cast_nullable_to_non_nullable
              as SendingApproach,
    ));
  }

  @override
  $OnlyTaskModelCopyWith<$Res> get task {
    return $OnlyTaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$TaskCompletionToggledInitializationEvent
    implements TaskCompletionToggledInitializationEvent {
  const _$TaskCompletionToggledInitializationEvent(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskCompletionToggledInitializationEvent &&
            const DeepCollectionEquality().equals(other.task, task) &&
            const DeepCollectionEquality()
                .equals(other.isCompleted, isCompleted) &&
            const DeepCollectionEquality()
                .equals(other.sendingApproach, sendingApproach));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(task),
      const DeepCollectionEquality().hash(isCompleted),
      const DeepCollectionEquality().hash(sendingApproach));

  @JsonKey(ignore: true)
  @override
  _$$TaskCompletionToggledInitializationEventCopyWith<
          _$TaskCompletionToggledInitializationEvent>
      get copyWith => __$$TaskCompletionToggledInitializationEventCopyWithImpl<
          _$TaskCompletionToggledInitializationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startInit,
    required TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)
        taskToggleComplete,
    required TResult Function(TaskFilter filter) filterChange,
    required TResult Function(OnlyTaskModel task) taskDelete,
    required TResult Function(String title) createOnMainScreen,
  }) {
    return taskToggleComplete(task, isCompleted, sendingApproach);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
  }) {
    return taskToggleComplete?.call(task, isCompleted, sendingApproach);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
    required TResult orElse(),
  }) {
    if (taskToggleComplete != null) {
      return taskToggleComplete(task, isCompleted, sendingApproach);
    }
    return orElse();
  }

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
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
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
      _$TaskCompletionToggledInitializationEvent;

  OnlyTaskModel get task;
  bool get isCompleted;
  SendingApproach get sendingApproach;
  @JsonKey(ignore: true)
  _$$TaskCompletionToggledInitializationEventCopyWith<
          _$TaskCompletionToggledInitializationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskFilterChangedInitializationEventCopyWith<$Res> {
  factory _$$TaskFilterChangedInitializationEventCopyWith(
          _$TaskFilterChangedInitializationEvent value,
          $Res Function(_$TaskFilterChangedInitializationEvent) then) =
      __$$TaskFilterChangedInitializationEventCopyWithImpl<$Res>;
  $Res call({TaskFilter filter});
}

/// @nodoc
class __$$TaskFilterChangedInitializationEventCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res>
    implements _$$TaskFilterChangedInitializationEventCopyWith<$Res> {
  __$$TaskFilterChangedInitializationEventCopyWithImpl(
      _$TaskFilterChangedInitializationEvent _value,
      $Res Function(_$TaskFilterChangedInitializationEvent) _then)
      : super(
            _value, (v) => _then(v as _$TaskFilterChangedInitializationEvent));

  @override
  _$TaskFilterChangedInitializationEvent get _value =>
      super._value as _$TaskFilterChangedInitializationEvent;

  @override
  $Res call({
    Object? filter = freezed,
  }) {
    return _then(_$TaskFilterChangedInitializationEvent(
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
    ));
  }
}

/// @nodoc

class _$TaskFilterChangedInitializationEvent
    implements TaskFilterChangedInitializationEvent {
  const _$TaskFilterChangedInitializationEvent(this.filter);

  @override
  final TaskFilter filter;

  @override
  String toString() {
    return 'InitializationEvent.filterChange(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskFilterChangedInitializationEvent &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$TaskFilterChangedInitializationEventCopyWith<
          _$TaskFilterChangedInitializationEvent>
      get copyWith => __$$TaskFilterChangedInitializationEventCopyWithImpl<
          _$TaskFilterChangedInitializationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startInit,
    required TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)
        taskToggleComplete,
    required TResult Function(TaskFilter filter) filterChange,
    required TResult Function(OnlyTaskModel task) taskDelete,
    required TResult Function(String title) createOnMainScreen,
  }) {
    return filterChange(filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
  }) {
    return filterChange?.call(filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
    required TResult orElse(),
  }) {
    if (filterChange != null) {
      return filterChange(filter);
    }
    return orElse();
  }

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
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
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
      _$TaskFilterChangedInitializationEvent;

  TaskFilter get filter;
  @JsonKey(ignore: true)
  _$$TaskFilterChangedInitializationEventCopyWith<
          _$TaskFilterChangedInitializationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskDeleteInitializationEventCopyWith<$Res> {
  factory _$$TaskDeleteInitializationEventCopyWith(
          _$TaskDeleteInitializationEvent value,
          $Res Function(_$TaskDeleteInitializationEvent) then) =
      __$$TaskDeleteInitializationEventCopyWithImpl<$Res>;
  $Res call({OnlyTaskModel task});

  $OnlyTaskModelCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskDeleteInitializationEventCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res>
    implements _$$TaskDeleteInitializationEventCopyWith<$Res> {
  __$$TaskDeleteInitializationEventCopyWithImpl(
      _$TaskDeleteInitializationEvent _value,
      $Res Function(_$TaskDeleteInitializationEvent) _then)
      : super(_value, (v) => _then(v as _$TaskDeleteInitializationEvent));

  @override
  _$TaskDeleteInitializationEvent get _value =>
      super._value as _$TaskDeleteInitializationEvent;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$TaskDeleteInitializationEvent(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
    ));
  }

  @override
  $OnlyTaskModelCopyWith<$Res> get task {
    return $OnlyTaskModelCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$TaskDeleteInitializationEvent implements TaskDeleteInitializationEvent {
  const _$TaskDeleteInitializationEvent(this.task);

  @override
  final OnlyTaskModel task;

  @override
  String toString() {
    return 'InitializationEvent.taskDelete(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDeleteInitializationEvent &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$TaskDeleteInitializationEventCopyWith<_$TaskDeleteInitializationEvent>
      get copyWith => __$$TaskDeleteInitializationEventCopyWithImpl<
          _$TaskDeleteInitializationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startInit,
    required TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)
        taskToggleComplete,
    required TResult Function(TaskFilter filter) filterChange,
    required TResult Function(OnlyTaskModel task) taskDelete,
    required TResult Function(String title) createOnMainScreen,
  }) {
    return taskDelete(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
  }) {
    return taskDelete?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
    required TResult orElse(),
  }) {
    if (taskDelete != null) {
      return taskDelete(task);
    }
    return orElse();
  }

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
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
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
      _$TaskDeleteInitializationEvent;

  OnlyTaskModel get task;
  @JsonKey(ignore: true)
  _$$TaskDeleteInitializationEventCopyWith<_$TaskDeleteInitializationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FastTaskCreateInitializationEventCopyWith<$Res> {
  factory _$$FastTaskCreateInitializationEventCopyWith(
          _$FastTaskCreateInitializationEvent value,
          $Res Function(_$FastTaskCreateInitializationEvent) then) =
      __$$FastTaskCreateInitializationEventCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$FastTaskCreateInitializationEventCopyWithImpl<$Res>
    extends _$InitializationEventCopyWithImpl<$Res>
    implements _$$FastTaskCreateInitializationEventCopyWith<$Res> {
  __$$FastTaskCreateInitializationEventCopyWithImpl(
      _$FastTaskCreateInitializationEvent _value,
      $Res Function(_$FastTaskCreateInitializationEvent) _then)
      : super(_value, (v) => _then(v as _$FastTaskCreateInitializationEvent));

  @override
  _$FastTaskCreateInitializationEvent get _value =>
      super._value as _$FastTaskCreateInitializationEvent;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$FastTaskCreateInitializationEvent(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FastTaskCreateInitializationEvent
    implements FastTaskCreateInitializationEvent {
  const _$FastTaskCreateInitializationEvent(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'InitializationEvent.createOnMainScreen(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FastTaskCreateInitializationEvent &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$FastTaskCreateInitializationEventCopyWith<
          _$FastTaskCreateInitializationEvent>
      get copyWith => __$$FastTaskCreateInitializationEventCopyWithImpl<
          _$FastTaskCreateInitializationEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startInit,
    required TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)
        taskToggleComplete,
    required TResult Function(TaskFilter filter) filterChange,
    required TResult Function(OnlyTaskModel task) taskDelete,
    required TResult Function(String title) createOnMainScreen,
  }) {
    return createOnMainScreen(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
  }) {
    return createOnMainScreen?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startInit,
    TResult Function(OnlyTaskModel task, bool isCompleted,
            SendingApproach sendingApproach)?
        taskToggleComplete,
    TResult Function(TaskFilter filter)? filterChange,
    TResult Function(OnlyTaskModel task)? taskDelete,
    TResult Function(String title)? createOnMainScreen,
    required TResult orElse(),
  }) {
    if (createOnMainScreen != null) {
      return createOnMainScreen(title);
    }
    return orElse();
  }

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
    TResult Function(StartInitializationEvent value)? startInit,
    TResult Function(TaskCompletionToggledInitializationEvent value)?
        taskToggleComplete,
    TResult Function(TaskFilterChangedInitializationEvent value)? filterChange,
    TResult Function(TaskDeleteInitializationEvent value)? taskDelete,
    TResult Function(FastTaskCreateInitializationEvent value)?
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
      _$FastTaskCreateInitializationEvent;

  String get title;
  @JsonKey(ignore: true)
  _$$FastTaskCreateInitializationEventCopyWith<
          _$FastTaskCreateInitializationEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InitializationState {
  InitializationStatus get status => throw _privateConstructorUsedError;
  int get competedTasks => throw _privateConstructorUsedError;
  List<OnlyTaskModel> get tasks => throw _privateConstructorUsedError;
  TaskFilter get filter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitializationStateCopyWith<InitializationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitializationStateCopyWith<$Res> {
  factory $InitializationStateCopyWith(
          InitializationState value, $Res Function(InitializationState) then) =
      _$InitializationStateCopyWithImpl<$Res>;
  $Res call(
      {InitializationStatus status,
      int competedTasks,
      List<OnlyTaskModel> tasks,
      TaskFilter filter});
}

/// @nodoc
class _$InitializationStateCopyWithImpl<$Res>
    implements $InitializationStateCopyWith<$Res> {
  _$InitializationStateCopyWithImpl(this._value, this._then);

  final InitializationState _value;
  // ignore: unused_field
  final $Res Function(InitializationState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? competedTasks = freezed,
    Object? tasks = freezed,
    Object? filter = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InitializationStatus,
      competedTasks: competedTasks == freezed
          ? _value.competedTasks
          : competedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
    ));
  }
}

/// @nodoc
abstract class _$$_InitializationStateCopyWith<$Res>
    implements $InitializationStateCopyWith<$Res> {
  factory _$$_InitializationStateCopyWith(_$_InitializationState value,
          $Res Function(_$_InitializationState) then) =
      __$$_InitializationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {InitializationStatus status,
      int competedTasks,
      List<OnlyTaskModel> tasks,
      TaskFilter filter});
}

/// @nodoc
class __$$_InitializationStateCopyWithImpl<$Res>
    extends _$InitializationStateCopyWithImpl<$Res>
    implements _$$_InitializationStateCopyWith<$Res> {
  __$$_InitializationStateCopyWithImpl(_$_InitializationState _value,
      $Res Function(_$_InitializationState) _then)
      : super(_value, (v) => _then(v as _$_InitializationState));

  @override
  _$_InitializationState get _value => super._value as _$_InitializationState;

  @override
  $Res call({
    Object? status = freezed,
    Object? competedTasks = freezed,
    Object? tasks = freezed,
    Object? filter = freezed,
  }) {
    return _then(_$_InitializationState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InitializationStatus,
      competedTasks: competedTasks == freezed
          ? _value.competedTasks
          : competedTasks // ignore: cast_nullable_to_non_nullable
              as int,
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as TaskFilter,
    ));
  }
}

/// @nodoc

class _$_InitializationState extends _InitializationState {
  const _$_InitializationState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializationState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.competedTasks, competedTasks) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality().equals(other.filter, filter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(competedTasks),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(filter));

  @JsonKey(ignore: true)
  @override
  _$$_InitializationStateCopyWith<_$_InitializationState> get copyWith =>
      __$$_InitializationStateCopyWithImpl<_$_InitializationState>(
          this, _$identity);
}

abstract class _InitializationState extends InitializationState {
  const factory _InitializationState(
      {final InitializationStatus status,
      final int competedTasks,
      final List<OnlyTaskModel> tasks,
      final TaskFilter filter}) = _$_InitializationState;
  const _InitializationState._() : super._();

  @override
  InitializationStatus get status;
  @override
  int get competedTasks;
  @override
  List<OnlyTaskModel> get tasks;
  @override
  TaskFilter get filter;
  @override
  @JsonKey(ignore: true)
  _$$_InitializationStateCopyWith<_$_InitializationState> get copyWith =>
      throw _privateConstructorUsedError;
}
