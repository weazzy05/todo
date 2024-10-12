// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'only_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnlyTaskModel _$OnlyTaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$OnlyTaskModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get text => throw _privateConstructorUsedError;
  @HiveField(2)
  String get importance => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get deadline => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get done => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @HiveField(6)
  int get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'changed_at')
  @HiveField(7)
  int get changedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_by')
  @HiveField(8)
  String get lastUpdatedBy => throw _privateConstructorUsedError;

  /// Serializes this OnlyTaskModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnlyTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnlyTaskModelCopyWith<OnlyTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlyTaskModelCopyWith<$Res> {
  factory $OnlyTaskModelCopyWith(
          OnlyTaskModel value, $Res Function(OnlyTaskModel) then) =
      _$OnlyTaskModelCopyWithImpl<$Res, OnlyTaskModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String text,
      @HiveField(2) String importance,
      @HiveField(3) int? deadline,
      @HiveField(4) bool done,
      @HiveField(5) String? color,
      @JsonKey(name: 'created_at') @HiveField(6) int createdAt,
      @JsonKey(name: 'changed_at') @HiveField(7) int changedAt,
      @JsonKey(name: 'last_updated_by') @HiveField(8) String lastUpdatedBy});
}

/// @nodoc
class _$OnlyTaskModelCopyWithImpl<$Res, $Val extends OnlyTaskModel>
    implements $OnlyTaskModelCopyWith<$Res> {
  _$OnlyTaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnlyTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? importance = null,
    Object? deadline = freezed,
    Object? done = null,
    Object? color = freezed,
    Object? createdAt = null,
    Object? changedAt = null,
    Object? lastUpdatedBy = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      importance: null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      changedAt: null == changedAt
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdatedBy: null == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskModelImplCopyWith<$Res>
    implements $OnlyTaskModelCopyWith<$Res> {
  factory _$$TaskModelImplCopyWith(
          _$TaskModelImpl value, $Res Function(_$TaskModelImpl) then) =
      __$$TaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String text,
      @HiveField(2) String importance,
      @HiveField(3) int? deadline,
      @HiveField(4) bool done,
      @HiveField(5) String? color,
      @JsonKey(name: 'created_at') @HiveField(6) int createdAt,
      @JsonKey(name: 'changed_at') @HiveField(7) int changedAt,
      @JsonKey(name: 'last_updated_by') @HiveField(8) String lastUpdatedBy});
}

/// @nodoc
class __$$TaskModelImplCopyWithImpl<$Res>
    extends _$OnlyTaskModelCopyWithImpl<$Res, _$TaskModelImpl>
    implements _$$TaskModelImplCopyWith<$Res> {
  __$$TaskModelImplCopyWithImpl(
      _$TaskModelImpl _value, $Res Function(_$TaskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlyTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? importance = null,
    Object? deadline = freezed,
    Object? done = null,
    Object? color = freezed,
    Object? createdAt = null,
    Object? changedAt = null,
    Object? lastUpdatedBy = null,
  }) {
    return _then(_$TaskModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      importance: null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      changedAt: null == changedAt
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdatedBy: null == lastUpdatedBy
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'OnlyTaskAdapter')
class _$TaskModelImpl extends _TaskModel {
  _$TaskModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.text,
      @HiveField(2) this.importance = 'basic',
      @HiveField(3) this.deadline,
      @HiveField(4) required this.done,
      @HiveField(5) this.color,
      @JsonKey(name: 'created_at') @HiveField(6) required this.createdAt,
      @JsonKey(name: 'changed_at') @HiveField(7) required this.changedAt,
      @JsonKey(name: 'last_updated_by')
      @HiveField(8)
      required this.lastUpdatedBy})
      : super._();

  factory _$TaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String text;
  @override
  @JsonKey()
  @HiveField(2)
  final String importance;
  @override
  @HiveField(3)
  final int? deadline;
  @override
  @HiveField(4)
  final bool done;
  @override
  @HiveField(5)
  final String? color;
  @override
  @JsonKey(name: 'created_at')
  @HiveField(6)
  final int createdAt;
  @override
  @JsonKey(name: 'changed_at')
  @HiveField(7)
  final int changedAt;
  @override
  @JsonKey(name: 'last_updated_by')
  @HiveField(8)
  final String lastUpdatedBy;

  @override
  String toString() {
    return 'OnlyTaskModel(id: $id, text: $text, importance: $importance, deadline: $deadline, done: $done, color: $color, createdAt: $createdAt, changedAt: $changedAt, lastUpdatedBy: $lastUpdatedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt) &&
            (identical(other.lastUpdatedBy, lastUpdatedBy) ||
                other.lastUpdatedBy == lastUpdatedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, importance, deadline,
      done, color, createdAt, changedAt, lastUpdatedBy);

  /// Create a copy of OnlyTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      __$$TaskModelImplCopyWithImpl<_$TaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskModelImplToJson(
      this,
    );
  }
}

abstract class _TaskModel extends OnlyTaskModel {
  factory _TaskModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String text,
      @HiveField(2) final String importance,
      @HiveField(3) final int? deadline,
      @HiveField(4) required final bool done,
      @HiveField(5) final String? color,
      @JsonKey(name: 'created_at') @HiveField(6) required final int createdAt,
      @JsonKey(name: 'changed_at') @HiveField(7) required final int changedAt,
      @JsonKey(name: 'last_updated_by')
      @HiveField(8)
      required final String lastUpdatedBy}) = _$TaskModelImpl;
  _TaskModel._() : super._();

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$TaskModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get text;
  @override
  @HiveField(2)
  String get importance;
  @override
  @HiveField(3)
  int? get deadline;
  @override
  @HiveField(4)
  bool get done;
  @override
  @HiveField(5)
  String? get color;
  @override
  @JsonKey(name: 'created_at')
  @HiveField(6)
  int get createdAt;
  @override
  @JsonKey(name: 'changed_at')
  @HiveField(7)
  int get changedAt;
  @override
  @JsonKey(name: 'last_updated_by')
  @HiveField(8)
  String get lastUpdatedBy;

  /// Create a copy of OnlyTaskModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
