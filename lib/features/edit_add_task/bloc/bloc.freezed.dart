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
mixin _$EditAddTaskEvent {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditTaskTitleChanged value) titleChange,
    required TResult Function(EditTaskImportanceChanged value) importanceChange,
    required TResult Function(EditTaskDeadlineChanged value) deadlineChange,
    required TResult Function(EditTaskSubmitted value) taskSubmit,
    required TResult Function(EditTaskDeleted value) taskDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditTaskTitleChanged value)? titleChange,
    TResult? Function(EditTaskImportanceChanged value)? importanceChange,
    TResult? Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult? Function(EditTaskSubmitted value)? taskSubmit,
    TResult? Function(EditTaskDeleted value)? taskDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAddTaskEventCopyWith<$Res> {
  factory $EditAddTaskEventCopyWith(
          EditAddTaskEvent value, $Res Function(EditAddTaskEvent) then) =
      _$EditAddTaskEventCopyWithImpl<$Res, EditAddTaskEvent>;
}

/// @nodoc
class _$EditAddTaskEventCopyWithImpl<$Res, $Val extends EditAddTaskEvent>
    implements $EditAddTaskEventCopyWith<$Res> {
  _$EditAddTaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$EditTaskTitleChangedImplCopyWith<$Res> {
  factory _$$EditTaskTitleChangedImplCopyWith(_$EditTaskTitleChangedImpl value,
          $Res Function(_$EditTaskTitleChangedImpl) then) =
      __$$EditTaskTitleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$EditTaskTitleChangedImplCopyWithImpl<$Res>
    extends _$EditAddTaskEventCopyWithImpl<$Res, _$EditTaskTitleChangedImpl>
    implements _$$EditTaskTitleChangedImplCopyWith<$Res> {
  __$$EditTaskTitleChangedImplCopyWithImpl(_$EditTaskTitleChangedImpl _value,
      $Res Function(_$EditTaskTitleChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$EditTaskTitleChangedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTaskTitleChangedImpl implements EditTaskTitleChanged {
  const _$EditTaskTitleChangedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'EditAddTaskEvent.titleChange(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskTitleChangedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskTitleChangedImplCopyWith<_$EditTaskTitleChangedImpl>
      get copyWith =>
          __$$EditTaskTitleChangedImplCopyWithImpl<_$EditTaskTitleChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditTaskTitleChanged value) titleChange,
    required TResult Function(EditTaskImportanceChanged value) importanceChange,
    required TResult Function(EditTaskDeadlineChanged value) deadlineChange,
    required TResult Function(EditTaskSubmitted value) taskSubmit,
    required TResult Function(EditTaskDeleted value) taskDelete,
  }) {
    return titleChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditTaskTitleChanged value)? titleChange,
    TResult? Function(EditTaskImportanceChanged value)? importanceChange,
    TResult? Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult? Function(EditTaskSubmitted value)? taskSubmit,
    TResult? Function(EditTaskDeleted value)? taskDelete,
  }) {
    return titleChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
    required TResult orElse(),
  }) {
    if (titleChange != null) {
      return titleChange(this);
    }
    return orElse();
  }
}

abstract class EditTaskTitleChanged implements EditAddTaskEvent {
  const factory EditTaskTitleChanged(final String title) =
      _$EditTaskTitleChangedImpl;

  String get title;

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditTaskTitleChangedImplCopyWith<_$EditTaskTitleChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTaskImportanceChangedImplCopyWith<$Res> {
  factory _$$EditTaskImportanceChangedImplCopyWith(
          _$EditTaskImportanceChangedImpl value,
          $Res Function(_$EditTaskImportanceChangedImpl) then) =
      __$$EditTaskImportanceChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String importance});
}

/// @nodoc
class __$$EditTaskImportanceChangedImplCopyWithImpl<$Res>
    extends _$EditAddTaskEventCopyWithImpl<$Res,
        _$EditTaskImportanceChangedImpl>
    implements _$$EditTaskImportanceChangedImplCopyWith<$Res> {
  __$$EditTaskImportanceChangedImplCopyWithImpl(
      _$EditTaskImportanceChangedImpl _value,
      $Res Function(_$EditTaskImportanceChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? importance = null,
  }) {
    return _then(_$EditTaskImportanceChangedImpl(
      null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTaskImportanceChangedImpl implements EditTaskImportanceChanged {
  const _$EditTaskImportanceChangedImpl(this.importance);

  @override
  final String importance;

  @override
  String toString() {
    return 'EditAddTaskEvent.importanceChange(importance: $importance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskImportanceChangedImpl &&
            (identical(other.importance, importance) ||
                other.importance == importance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, importance);

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskImportanceChangedImplCopyWith<_$EditTaskImportanceChangedImpl>
      get copyWith => __$$EditTaskImportanceChangedImplCopyWithImpl<
          _$EditTaskImportanceChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditTaskTitleChanged value) titleChange,
    required TResult Function(EditTaskImportanceChanged value) importanceChange,
    required TResult Function(EditTaskDeadlineChanged value) deadlineChange,
    required TResult Function(EditTaskSubmitted value) taskSubmit,
    required TResult Function(EditTaskDeleted value) taskDelete,
  }) {
    return importanceChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditTaskTitleChanged value)? titleChange,
    TResult? Function(EditTaskImportanceChanged value)? importanceChange,
    TResult? Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult? Function(EditTaskSubmitted value)? taskSubmit,
    TResult? Function(EditTaskDeleted value)? taskDelete,
  }) {
    return importanceChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
    required TResult orElse(),
  }) {
    if (importanceChange != null) {
      return importanceChange(this);
    }
    return orElse();
  }
}

abstract class EditTaskImportanceChanged implements EditAddTaskEvent {
  const factory EditTaskImportanceChanged(final String importance) =
      _$EditTaskImportanceChangedImpl;

  String get importance;

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditTaskImportanceChangedImplCopyWith<_$EditTaskImportanceChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTaskDeadlineChangedImplCopyWith<$Res> {
  factory _$$EditTaskDeadlineChangedImplCopyWith(
          _$EditTaskDeadlineChangedImpl value,
          $Res Function(_$EditTaskDeadlineChangedImpl) then) =
      __$$EditTaskDeadlineChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? deadline});
}

/// @nodoc
class __$$EditTaskDeadlineChangedImplCopyWithImpl<$Res>
    extends _$EditAddTaskEventCopyWithImpl<$Res, _$EditTaskDeadlineChangedImpl>
    implements _$$EditTaskDeadlineChangedImplCopyWith<$Res> {
  __$$EditTaskDeadlineChangedImplCopyWithImpl(
      _$EditTaskDeadlineChangedImpl _value,
      $Res Function(_$EditTaskDeadlineChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deadline = freezed,
  }) {
    return _then(_$EditTaskDeadlineChangedImpl(
      freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$EditTaskDeadlineChangedImpl implements EditTaskDeadlineChanged {
  const _$EditTaskDeadlineChangedImpl(this.deadline);

  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'EditAddTaskEvent.deadlineChange(deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskDeadlineChangedImpl &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, deadline);

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskDeadlineChangedImplCopyWith<_$EditTaskDeadlineChangedImpl>
      get copyWith => __$$EditTaskDeadlineChangedImplCopyWithImpl<
          _$EditTaskDeadlineChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditTaskTitleChanged value) titleChange,
    required TResult Function(EditTaskImportanceChanged value) importanceChange,
    required TResult Function(EditTaskDeadlineChanged value) deadlineChange,
    required TResult Function(EditTaskSubmitted value) taskSubmit,
    required TResult Function(EditTaskDeleted value) taskDelete,
  }) {
    return deadlineChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditTaskTitleChanged value)? titleChange,
    TResult? Function(EditTaskImportanceChanged value)? importanceChange,
    TResult? Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult? Function(EditTaskSubmitted value)? taskSubmit,
    TResult? Function(EditTaskDeleted value)? taskDelete,
  }) {
    return deadlineChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
    required TResult orElse(),
  }) {
    if (deadlineChange != null) {
      return deadlineChange(this);
    }
    return orElse();
  }
}

abstract class EditTaskDeadlineChanged implements EditAddTaskEvent {
  const factory EditTaskDeadlineChanged(final DateTime? deadline) =
      _$EditTaskDeadlineChangedImpl;

  DateTime? get deadline;

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditTaskDeadlineChangedImplCopyWith<_$EditTaskDeadlineChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTaskSubmittedImplCopyWith<$Res> {
  factory _$$EditTaskSubmittedImplCopyWith(_$EditTaskSubmittedImpl value,
          $Res Function(_$EditTaskSubmittedImpl) then) =
      __$$EditTaskSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTaskSubmittedImplCopyWithImpl<$Res>
    extends _$EditAddTaskEventCopyWithImpl<$Res, _$EditTaskSubmittedImpl>
    implements _$$EditTaskSubmittedImplCopyWith<$Res> {
  __$$EditTaskSubmittedImplCopyWithImpl(_$EditTaskSubmittedImpl _value,
      $Res Function(_$EditTaskSubmittedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditTaskSubmittedImpl implements EditTaskSubmitted {
  const _$EditTaskSubmittedImpl();

  @override
  String toString() {
    return 'EditAddTaskEvent.taskSubmit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditTaskSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditTaskTitleChanged value) titleChange,
    required TResult Function(EditTaskImportanceChanged value) importanceChange,
    required TResult Function(EditTaskDeadlineChanged value) deadlineChange,
    required TResult Function(EditTaskSubmitted value) taskSubmit,
    required TResult Function(EditTaskDeleted value) taskDelete,
  }) {
    return taskSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditTaskTitleChanged value)? titleChange,
    TResult? Function(EditTaskImportanceChanged value)? importanceChange,
    TResult? Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult? Function(EditTaskSubmitted value)? taskSubmit,
    TResult? Function(EditTaskDeleted value)? taskDelete,
  }) {
    return taskSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
    required TResult orElse(),
  }) {
    if (taskSubmit != null) {
      return taskSubmit(this);
    }
    return orElse();
  }
}

abstract class EditTaskSubmitted implements EditAddTaskEvent {
  const factory EditTaskSubmitted() = _$EditTaskSubmittedImpl;
}

/// @nodoc
abstract class _$$EditTaskDeletedImplCopyWith<$Res> {
  factory _$$EditTaskDeletedImplCopyWith(_$EditTaskDeletedImpl value,
          $Res Function(_$EditTaskDeletedImpl) then) =
      __$$EditTaskDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTaskDeletedImplCopyWithImpl<$Res>
    extends _$EditAddTaskEventCopyWithImpl<$Res, _$EditTaskDeletedImpl>
    implements _$$EditTaskDeletedImplCopyWith<$Res> {
  __$$EditTaskDeletedImplCopyWithImpl(
      _$EditTaskDeletedImpl _value, $Res Function(_$EditTaskDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditAddTaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditTaskDeletedImpl implements EditTaskDeleted {
  const _$EditTaskDeletedImpl();

  @override
  String toString() {
    return 'EditAddTaskEvent.taskDelete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditTaskDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditTaskTitleChanged value) titleChange,
    required TResult Function(EditTaskImportanceChanged value) importanceChange,
    required TResult Function(EditTaskDeadlineChanged value) deadlineChange,
    required TResult Function(EditTaskSubmitted value) taskSubmit,
    required TResult Function(EditTaskDeleted value) taskDelete,
  }) {
    return taskDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditTaskTitleChanged value)? titleChange,
    TResult? Function(EditTaskImportanceChanged value)? importanceChange,
    TResult? Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult? Function(EditTaskSubmitted value)? taskSubmit,
    TResult? Function(EditTaskDeleted value)? taskDelete,
  }) {
    return taskDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
    required TResult orElse(),
  }) {
    if (taskDelete != null) {
      return taskDelete(this);
    }
    return orElse();
  }
}

abstract class EditTaskDeleted implements EditAddTaskEvent {
  const factory EditTaskDeleted() = _$EditTaskDeletedImpl;
}

/// @nodoc
mixin _$EditAddTaskState {
  EditAddTaskStatus get status => throw _privateConstructorUsedError;
  OnlyTaskModel? get initialTask => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get importance => throw _privateConstructorUsedError;
  int? get deadline => throw _privateConstructorUsedError;

  /// Create a copy of EditAddTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditAddTaskStateCopyWith<EditAddTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAddTaskStateCopyWith<$Res> {
  factory $EditAddTaskStateCopyWith(
          EditAddTaskState value, $Res Function(EditAddTaskState) then) =
      _$EditAddTaskStateCopyWithImpl<$Res, EditAddTaskState>;
  @useResult
  $Res call(
      {EditAddTaskStatus status,
      OnlyTaskModel? initialTask,
      String title,
      String? importance,
      int? deadline});

  $OnlyTaskModelCopyWith<$Res>? get initialTask;
}

/// @nodoc
class _$EditAddTaskStateCopyWithImpl<$Res, $Val extends EditAddTaskState>
    implements $EditAddTaskStateCopyWith<$Res> {
  _$EditAddTaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditAddTaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? initialTask = freezed,
    Object? title = null,
    Object? importance = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditAddTaskStatus,
      initialTask: freezed == initialTask
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      importance: freezed == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of EditAddTaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OnlyTaskModelCopyWith<$Res>? get initialTask {
    if (_value.initialTask == null) {
      return null;
    }

    return $OnlyTaskModelCopyWith<$Res>(_value.initialTask!, (value) {
      return _then(_value.copyWith(initialTask: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditAddTaskStateImplCopyWith<$Res>
    implements $EditAddTaskStateCopyWith<$Res> {
  factory _$$EditAddTaskStateImplCopyWith(_$EditAddTaskStateImpl value,
          $Res Function(_$EditAddTaskStateImpl) then) =
      __$$EditAddTaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EditAddTaskStatus status,
      OnlyTaskModel? initialTask,
      String title,
      String? importance,
      int? deadline});

  @override
  $OnlyTaskModelCopyWith<$Res>? get initialTask;
}

/// @nodoc
class __$$EditAddTaskStateImplCopyWithImpl<$Res>
    extends _$EditAddTaskStateCopyWithImpl<$Res, _$EditAddTaskStateImpl>
    implements _$$EditAddTaskStateImplCopyWith<$Res> {
  __$$EditAddTaskStateImplCopyWithImpl(_$EditAddTaskStateImpl _value,
      $Res Function(_$EditAddTaskStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditAddTaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? initialTask = freezed,
    Object? title = null,
    Object? importance = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$EditAddTaskStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditAddTaskStatus,
      initialTask: freezed == initialTask
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      importance: freezed == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$EditAddTaskStateImpl extends _EditAddTaskState {
  const _$EditAddTaskStateImpl(
      {this.status = EditAddTaskStatus.initial,
      this.initialTask,
      this.title = '',
      this.importance,
      this.deadline})
      : super._();

  @override
  @JsonKey()
  final EditAddTaskStatus status;
  @override
  final OnlyTaskModel? initialTask;
  @override
  @JsonKey()
  final String title;
  @override
  final String? importance;
  @override
  final int? deadline;

  @override
  String toString() {
    return 'EditAddTaskState(status: $status, initialTask: $initialTask, title: $title, importance: $importance, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAddTaskStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.initialTask, initialTask) ||
                other.initialTask == initialTask) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, initialTask, title, importance, deadline);

  /// Create a copy of EditAddTaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditAddTaskStateImplCopyWith<_$EditAddTaskStateImpl> get copyWith =>
      __$$EditAddTaskStateImplCopyWithImpl<_$EditAddTaskStateImpl>(
          this, _$identity);
}

abstract class _EditAddTaskState extends EditAddTaskState {
  const factory _EditAddTaskState(
      {final EditAddTaskStatus status,
      final OnlyTaskModel? initialTask,
      final String title,
      final String? importance,
      final int? deadline}) = _$EditAddTaskStateImpl;
  const _EditAddTaskState._() : super._();

  @override
  EditAddTaskStatus get status;
  @override
  OnlyTaskModel? get initialTask;
  @override
  String get title;
  @override
  String? get importance;
  @override
  int? get deadline;

  /// Create a copy of EditAddTaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditAddTaskStateImplCopyWith<_$EditAddTaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
