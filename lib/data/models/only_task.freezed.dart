// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'only_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlyTaskModelCopyWith<OnlyTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlyTaskModelCopyWith<$Res> {
  factory $OnlyTaskModelCopyWith(
          OnlyTaskModel value, $Res Function(OnlyTaskModel) then) =
      _$OnlyTaskModelCopyWithImpl<$Res>;
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
class _$OnlyTaskModelCopyWithImpl<$Res>
    implements $OnlyTaskModelCopyWith<$Res> {
  _$OnlyTaskModelCopyWithImpl(this._value, this._then);

  final OnlyTaskModel _value;
  // ignore: unused_field
  final $Res Function(OnlyTaskModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? color = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
    Object? lastUpdatedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      changedAt: changedAt == freezed
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdatedBy: lastUpdatedBy == freezed
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res>
    implements $OnlyTaskModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
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
class __$$_TaskModelCopyWithImpl<$Res> extends _$OnlyTaskModelCopyWithImpl<$Res>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, (v) => _then(v as _$_TaskModel));

  @override
  _$_TaskModel get _value => super._value as _$_TaskModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? color = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
    Object? lastUpdatedBy = freezed,
  }) {
    return _then(_$_TaskModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      changedAt: changedAt == freezed
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdatedBy: lastUpdatedBy == freezed
          ? _value.lastUpdatedBy
          : lastUpdatedBy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'OnlyTaskAdapter')
class _$_TaskModel extends _TaskModel {
  _$_TaskModel(
      {@HiveField(0)
          required this.id,
      @HiveField(1)
          required this.text,
      @HiveField(2)
          this.importance = 'basic',
      @HiveField(3)
          this.deadline,
      @HiveField(4)
          required this.done,
      @HiveField(5)
          this.color,
      @JsonKey(name: 'created_at')
      @HiveField(6)
          required this.createdAt,
      @JsonKey(name: 'changed_at')
      @HiveField(7)
          required this.changedAt,
      @JsonKey(name: 'last_updated_by')
      @HiveField(8)
          required this.lastUpdatedBy})
      : super._();

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.changedAt, changedAt) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdatedBy, lastUpdatedBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(changedAt),
      const DeepCollectionEquality().hash(lastUpdatedBy));

  @JsonKey(ignore: true)
  @override
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      __$$_TaskModelCopyWithImpl<_$_TaskModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskModelToJson(
      this,
    );
  }
}

abstract class _TaskModel extends OnlyTaskModel {
  factory _TaskModel(
      {@HiveField(0)
          required final String id,
      @HiveField(1)
          required final String text,
      @HiveField(2)
          final String importance,
      @HiveField(3)
          final int? deadline,
      @HiveField(4)
          required final bool done,
      @HiveField(5)
          final String? color,
      @JsonKey(name: 'created_at')
      @HiveField(6)
          required final int createdAt,
      @JsonKey(name: 'changed_at')
      @HiveField(7)
          required final int changedAt,
      @JsonKey(name: 'last_updated_by')
      @HiveField(8)
          required final String lastUpdatedBy}) = _$_TaskModel;
  _TaskModel._() : super._();

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}
