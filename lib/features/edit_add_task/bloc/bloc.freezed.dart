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
mixin _$EditAddTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChange,
    required TResult Function(String importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() taskSubmit,
    required TResult Function() taskDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
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
      _$EditAddTaskEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditAddTaskEventCopyWithImpl<$Res>
    implements $EditAddTaskEventCopyWith<$Res> {
  _$EditAddTaskEventCopyWithImpl(this._value, this._then);

  final EditAddTaskEvent _value;
  // ignore: unused_field
  final $Res Function(EditAddTaskEvent) _then;
}

/// @nodoc
abstract class _$$EditTaskTitleChangedCopyWith<$Res> {
  factory _$$EditTaskTitleChangedCopyWith(_$EditTaskTitleChanged value,
          $Res Function(_$EditTaskTitleChanged) then) =
      __$$EditTaskTitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$EditTaskTitleChangedCopyWithImpl<$Res>
    extends _$EditAddTaskEventCopyWithImpl<$Res>
    implements _$$EditTaskTitleChangedCopyWith<$Res> {
  __$$EditTaskTitleChangedCopyWithImpl(_$EditTaskTitleChanged _value,
      $Res Function(_$EditTaskTitleChanged) _then)
      : super(_value, (v) => _then(v as _$EditTaskTitleChanged));

  @override
  _$EditTaskTitleChanged get _value => super._value as _$EditTaskTitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$EditTaskTitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTaskTitleChanged implements EditTaskTitleChanged {
  const _$EditTaskTitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'EditAddTaskEvent.titleChange(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskTitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$EditTaskTitleChangedCopyWith<_$EditTaskTitleChanged> get copyWith =>
      __$$EditTaskTitleChangedCopyWithImpl<_$EditTaskTitleChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChange,
    required TResult Function(String importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() taskSubmit,
    required TResult Function() taskDelete,
  }) {
    return titleChange(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
  }) {
    return titleChange?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
    required TResult orElse(),
  }) {
    if (titleChange != null) {
      return titleChange(title);
    }
    return orElse();
  }

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
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
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
      _$EditTaskTitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$EditTaskTitleChangedCopyWith<_$EditTaskTitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTaskImportanceChangedCopyWith<$Res> {
  factory _$$EditTaskImportanceChangedCopyWith(
          _$EditTaskImportanceChanged value,
          $Res Function(_$EditTaskImportanceChanged) then) =
      __$$EditTaskImportanceChangedCopyWithImpl<$Res>;
  $Res call({String importance});
}

/// @nodoc
class __$$EditTaskImportanceChangedCopyWithImpl<$Res>
    extends _$EditAddTaskEventCopyWithImpl<$Res>
    implements _$$EditTaskImportanceChangedCopyWith<$Res> {
  __$$EditTaskImportanceChangedCopyWithImpl(_$EditTaskImportanceChanged _value,
      $Res Function(_$EditTaskImportanceChanged) _then)
      : super(_value, (v) => _then(v as _$EditTaskImportanceChanged));

  @override
  _$EditTaskImportanceChanged get _value =>
      super._value as _$EditTaskImportanceChanged;

  @override
  $Res call({
    Object? importance = freezed,
  }) {
    return _then(_$EditTaskImportanceChanged(
      importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditTaskImportanceChanged implements EditTaskImportanceChanged {
  const _$EditTaskImportanceChanged(this.importance);

  @override
  final String importance;

  @override
  String toString() {
    return 'EditAddTaskEvent.importanceChange(importance: $importance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskImportanceChanged &&
            const DeepCollectionEquality()
                .equals(other.importance, importance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(importance));

  @JsonKey(ignore: true)
  @override
  _$$EditTaskImportanceChangedCopyWith<_$EditTaskImportanceChanged>
      get copyWith => __$$EditTaskImportanceChangedCopyWithImpl<
          _$EditTaskImportanceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChange,
    required TResult Function(String importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() taskSubmit,
    required TResult Function() taskDelete,
  }) {
    return importanceChange(importance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
  }) {
    return importanceChange?.call(importance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
    required TResult orElse(),
  }) {
    if (importanceChange != null) {
      return importanceChange(importance);
    }
    return orElse();
  }

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
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
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
      _$EditTaskImportanceChanged;

  String get importance;
  @JsonKey(ignore: true)
  _$$EditTaskImportanceChangedCopyWith<_$EditTaskImportanceChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTaskDeadlineChangedCopyWith<$Res> {
  factory _$$EditTaskDeadlineChangedCopyWith(_$EditTaskDeadlineChanged value,
          $Res Function(_$EditTaskDeadlineChanged) then) =
      __$$EditTaskDeadlineChangedCopyWithImpl<$Res>;
  $Res call({DateTime? deadline});
}

/// @nodoc
class __$$EditTaskDeadlineChangedCopyWithImpl<$Res>
    extends _$EditAddTaskEventCopyWithImpl<$Res>
    implements _$$EditTaskDeadlineChangedCopyWith<$Res> {
  __$$EditTaskDeadlineChangedCopyWithImpl(_$EditTaskDeadlineChanged _value,
      $Res Function(_$EditTaskDeadlineChanged) _then)
      : super(_value, (v) => _then(v as _$EditTaskDeadlineChanged));

  @override
  _$EditTaskDeadlineChanged get _value =>
      super._value as _$EditTaskDeadlineChanged;

  @override
  $Res call({
    Object? deadline = freezed,
  }) {
    return _then(_$EditTaskDeadlineChanged(
      deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$EditTaskDeadlineChanged implements EditTaskDeadlineChanged {
  const _$EditTaskDeadlineChanged(this.deadline);

  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'EditAddTaskEvent.deadlineChange(deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskDeadlineChanged &&
            const DeepCollectionEquality().equals(other.deadline, deadline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deadline));

  @JsonKey(ignore: true)
  @override
  _$$EditTaskDeadlineChangedCopyWith<_$EditTaskDeadlineChanged> get copyWith =>
      __$$EditTaskDeadlineChangedCopyWithImpl<_$EditTaskDeadlineChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChange,
    required TResult Function(String importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() taskSubmit,
    required TResult Function() taskDelete,
  }) {
    return deadlineChange(deadline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
  }) {
    return deadlineChange?.call(deadline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
    required TResult orElse(),
  }) {
    if (deadlineChange != null) {
      return deadlineChange(deadline);
    }
    return orElse();
  }

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
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
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
      _$EditTaskDeadlineChanged;

  DateTime? get deadline;
  @JsonKey(ignore: true)
  _$$EditTaskDeadlineChangedCopyWith<_$EditTaskDeadlineChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTaskSubmittedCopyWith<$Res> {
  factory _$$EditTaskSubmittedCopyWith(
          _$EditTaskSubmitted value, $Res Function(_$EditTaskSubmitted) then) =
      __$$EditTaskSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTaskSubmittedCopyWithImpl<$Res>
    extends _$EditAddTaskEventCopyWithImpl<$Res>
    implements _$$EditTaskSubmittedCopyWith<$Res> {
  __$$EditTaskSubmittedCopyWithImpl(
      _$EditTaskSubmitted _value, $Res Function(_$EditTaskSubmitted) _then)
      : super(_value, (v) => _then(v as _$EditTaskSubmitted));

  @override
  _$EditTaskSubmitted get _value => super._value as _$EditTaskSubmitted;
}

/// @nodoc

class _$EditTaskSubmitted implements EditTaskSubmitted {
  const _$EditTaskSubmitted();

  @override
  String toString() {
    return 'EditAddTaskEvent.taskSubmit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditTaskSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChange,
    required TResult Function(String importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() taskSubmit,
    required TResult Function() taskDelete,
  }) {
    return taskSubmit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
  }) {
    return taskSubmit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
    required TResult orElse(),
  }) {
    if (taskSubmit != null) {
      return taskSubmit();
    }
    return orElse();
  }

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
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
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
  const factory EditTaskSubmitted() = _$EditTaskSubmitted;
}

/// @nodoc
abstract class _$$EditTaskDeletedCopyWith<$Res> {
  factory _$$EditTaskDeletedCopyWith(
          _$EditTaskDeleted value, $Res Function(_$EditTaskDeleted) then) =
      __$$EditTaskDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditTaskDeletedCopyWithImpl<$Res>
    extends _$EditAddTaskEventCopyWithImpl<$Res>
    implements _$$EditTaskDeletedCopyWith<$Res> {
  __$$EditTaskDeletedCopyWithImpl(
      _$EditTaskDeleted _value, $Res Function(_$EditTaskDeleted) _then)
      : super(_value, (v) => _then(v as _$EditTaskDeleted));

  @override
  _$EditTaskDeleted get _value => super._value as _$EditTaskDeleted;
}

/// @nodoc

class _$EditTaskDeleted implements EditTaskDeleted {
  const _$EditTaskDeleted();

  @override
  String toString() {
    return 'EditAddTaskEvent.taskDelete()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditTaskDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChange,
    required TResult Function(String importance) importanceChange,
    required TResult Function(DateTime? deadline) deadlineChange,
    required TResult Function() taskSubmit,
    required TResult Function() taskDelete,
  }) {
    return taskDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
  }) {
    return taskDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChange,
    TResult Function(String importance)? importanceChange,
    TResult Function(DateTime? deadline)? deadlineChange,
    TResult Function()? taskSubmit,
    TResult Function()? taskDelete,
    required TResult orElse(),
  }) {
    if (taskDelete != null) {
      return taskDelete();
    }
    return orElse();
  }

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
    TResult Function(EditTaskTitleChanged value)? titleChange,
    TResult Function(EditTaskImportanceChanged value)? importanceChange,
    TResult Function(EditTaskDeadlineChanged value)? deadlineChange,
    TResult Function(EditTaskSubmitted value)? taskSubmit,
    TResult Function(EditTaskDeleted value)? taskDelete,
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
  const factory EditTaskDeleted() = _$EditTaskDeleted;
}

/// @nodoc
mixin _$EditAddTaskState {
  EditAddTaskStatus get status => throw _privateConstructorUsedError;
  OnlyTaskModel? get initialTask => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get importance => throw _privateConstructorUsedError;
  int? get deadline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditAddTaskStateCopyWith<EditAddTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditAddTaskStateCopyWith<$Res> {
  factory $EditAddTaskStateCopyWith(
          EditAddTaskState value, $Res Function(EditAddTaskState) then) =
      _$EditAddTaskStateCopyWithImpl<$Res>;
  $Res call(
      {EditAddTaskStatus status,
      OnlyTaskModel? initialTask,
      String title,
      String? importance,
      int? deadline});

  $OnlyTaskModelCopyWith<$Res>? get initialTask;
}

/// @nodoc
class _$EditAddTaskStateCopyWithImpl<$Res>
    implements $EditAddTaskStateCopyWith<$Res> {
  _$EditAddTaskStateCopyWithImpl(this._value, this._then);

  final EditAddTaskState _value;
  // ignore: unused_field
  final $Res Function(EditAddTaskState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? initialTask = freezed,
    Object? title = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditAddTaskStatus,
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $OnlyTaskModelCopyWith<$Res>? get initialTask {
    if (_value.initialTask == null) {
      return null;
    }

    return $OnlyTaskModelCopyWith<$Res>(_value.initialTask!, (value) {
      return _then(_value.copyWith(initialTask: value));
    });
  }
}

/// @nodoc
abstract class _$$_EditAddTaskStateCopyWith<$Res>
    implements $EditAddTaskStateCopyWith<$Res> {
  factory _$$_EditAddTaskStateCopyWith(
          _$_EditAddTaskState value, $Res Function(_$_EditAddTaskState) then) =
      __$$_EditAddTaskStateCopyWithImpl<$Res>;
  @override
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
class __$$_EditAddTaskStateCopyWithImpl<$Res>
    extends _$EditAddTaskStateCopyWithImpl<$Res>
    implements _$$_EditAddTaskStateCopyWith<$Res> {
  __$$_EditAddTaskStateCopyWithImpl(
      _$_EditAddTaskState _value, $Res Function(_$_EditAddTaskState) _then)
      : super(_value, (v) => _then(v as _$_EditAddTaskState));

  @override
  _$_EditAddTaskState get _value => super._value as _$_EditAddTaskState;

  @override
  $Res call({
    Object? status = freezed,
    Object? initialTask = freezed,
    Object? title = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$_EditAddTaskState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditAddTaskStatus,
      initialTask: initialTask == freezed
          ? _value.initialTask
          : initialTask // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_EditAddTaskState extends _EditAddTaskState {
  const _$_EditAddTaskState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditAddTaskState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.initialTask, initialTask) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.deadline, deadline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(initialTask),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline));

  @JsonKey(ignore: true)
  @override
  _$$_EditAddTaskStateCopyWith<_$_EditAddTaskState> get copyWith =>
      __$$_EditAddTaskStateCopyWithImpl<_$_EditAddTaskState>(this, _$identity);
}

abstract class _EditAddTaskState extends EditAddTaskState {
  const factory _EditAddTaskState(
      {final EditAddTaskStatus status,
      final OnlyTaskModel? initialTask,
      final String title,
      final String? importance,
      final int? deadline}) = _$_EditAddTaskState;
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
  @override
  @JsonKey(ignore: true)
  _$$_EditAddTaskStateCopyWith<_$_EditAddTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
