// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TasksResponseModel _$TasksResponseModelFromJson(Map<String, dynamic> json) {
  return _TasksModel.fromJson(json);
}

/// @nodoc
mixin _$TasksResponseModel {
  String get status => throw _privateConstructorUsedError;
  List<OnlyTaskModel> get list => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksResponseModelCopyWith<TasksResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksResponseModelCopyWith<$Res> {
  factory $TasksResponseModelCopyWith(
          TasksResponseModel value, $Res Function(TasksResponseModel) then) =
      _$TasksResponseModelCopyWithImpl<$Res>;
  $Res call({String status, List<OnlyTaskModel> list, int revision});
}

/// @nodoc
class _$TasksResponseModelCopyWithImpl<$Res>
    implements $TasksResponseModelCopyWith<$Res> {
  _$TasksResponseModelCopyWithImpl(this._value, this._then);

  final TasksResponseModel _value;
  // ignore: unused_field
  final $Res Function(TasksResponseModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? revision = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_TasksModelCopyWith<$Res>
    implements $TasksResponseModelCopyWith<$Res> {
  factory _$$_TasksModelCopyWith(
          _$_TasksModel value, $Res Function(_$_TasksModel) then) =
      __$$_TasksModelCopyWithImpl<$Res>;
  @override
  $Res call({String status, List<OnlyTaskModel> list, int revision});
}

/// @nodoc
class __$$_TasksModelCopyWithImpl<$Res>
    extends _$TasksResponseModelCopyWithImpl<$Res>
    implements _$$_TasksModelCopyWith<$Res> {
  __$$_TasksModelCopyWithImpl(
      _$_TasksModel _value, $Res Function(_$_TasksModel) _then)
      : super(_value, (v) => _then(v as _$_TasksModel));

  @override
  _$_TasksModel get _value => super._value as _$_TasksModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? list = freezed,
    Object? revision = freezed,
  }) {
    return _then(_$_TasksModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TasksModel extends _TasksModel {
  _$_TasksModel(
      {required this.status,
      required final List<OnlyTaskModel> list,
      required this.revision})
      : _list = list,
        super._();

  factory _$_TasksModel.fromJson(Map<String, dynamic> json) =>
      _$$_TasksModelFromJson(json);

  @override
  final String status;
  final List<OnlyTaskModel> _list;
  @override
  List<OnlyTaskModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final int revision;

  @override
  String toString() {
    return 'TasksResponseModel(status: $status, list: $list, revision: $revision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(other.revision, revision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(revision));

  @JsonKey(ignore: true)
  @override
  _$$_TasksModelCopyWith<_$_TasksModel> get copyWith =>
      __$$_TasksModelCopyWithImpl<_$_TasksModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TasksModelToJson(
      this,
    );
  }
}

abstract class _TasksModel extends TasksResponseModel {
  factory _TasksModel(
      {required final String status,
      required final List<OnlyTaskModel> list,
      required final int revision}) = _$_TasksModel;
  _TasksModel._() : super._();

  factory _TasksModel.fromJson(Map<String, dynamic> json) =
      _$_TasksModel.fromJson;

  @override
  String get status;
  @override
  List<OnlyTaskModel> get list;
  @override
  int get revision;
  @override
  @JsonKey(ignore: true)
  _$$_TasksModelCopyWith<_$_TasksModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TasksRequestModel _$TasksRequestModelFromJson(Map<String, dynamic> json) {
  return _TasksWithoutRevisionModel.fromJson(json);
}

/// @nodoc
mixin _$TasksRequestModel {
  List<OnlyTaskModel> get list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TasksRequestModelCopyWith<TasksRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksRequestModelCopyWith<$Res> {
  factory $TasksRequestModelCopyWith(
          TasksRequestModel value, $Res Function(TasksRequestModel) then) =
      _$TasksRequestModelCopyWithImpl<$Res>;
  $Res call({List<OnlyTaskModel> list});
}

/// @nodoc
class _$TasksRequestModelCopyWithImpl<$Res>
    implements $TasksRequestModelCopyWith<$Res> {
  _$TasksRequestModelCopyWithImpl(this._value, this._then);

  final TasksRequestModel _value;
  // ignore: unused_field
  final $Res Function(TasksRequestModel) _then;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_TasksWithoutRevisionModelCopyWith<$Res>
    implements $TasksRequestModelCopyWith<$Res> {
  factory _$$_TasksWithoutRevisionModelCopyWith(
          _$_TasksWithoutRevisionModel value,
          $Res Function(_$_TasksWithoutRevisionModel) then) =
      __$$_TasksWithoutRevisionModelCopyWithImpl<$Res>;
  @override
  $Res call({List<OnlyTaskModel> list});
}

/// @nodoc
class __$$_TasksWithoutRevisionModelCopyWithImpl<$Res>
    extends _$TasksRequestModelCopyWithImpl<$Res>
    implements _$$_TasksWithoutRevisionModelCopyWith<$Res> {
  __$$_TasksWithoutRevisionModelCopyWithImpl(
      _$_TasksWithoutRevisionModel _value,
      $Res Function(_$_TasksWithoutRevisionModel) _then)
      : super(_value, (v) => _then(v as _$_TasksWithoutRevisionModel));

  @override
  _$_TasksWithoutRevisionModel get _value =>
      super._value as _$_TasksWithoutRevisionModel;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_TasksWithoutRevisionModel(
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TasksWithoutRevisionModel extends _TasksWithoutRevisionModel {
  _$_TasksWithoutRevisionModel({required final List<OnlyTaskModel> list})
      : _list = list,
        super._();

  factory _$_TasksWithoutRevisionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TasksWithoutRevisionModelFromJson(json);

  final List<OnlyTaskModel> _list;
  @override
  List<OnlyTaskModel> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'TasksRequestModel(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TasksWithoutRevisionModel &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_TasksWithoutRevisionModelCopyWith<_$_TasksWithoutRevisionModel>
      get copyWith => __$$_TasksWithoutRevisionModelCopyWithImpl<
          _$_TasksWithoutRevisionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TasksWithoutRevisionModelToJson(
      this,
    );
  }
}

abstract class _TasksWithoutRevisionModel extends TasksRequestModel {
  factory _TasksWithoutRevisionModel(
      {required final List<OnlyTaskModel> list}) = _$_TasksWithoutRevisionModel;
  _TasksWithoutRevisionModel._() : super._();

  factory _TasksWithoutRevisionModel.fromJson(Map<String, dynamic> json) =
      _$_TasksWithoutRevisionModel.fromJson;

  @override
  List<OnlyTaskModel> get list;
  @override
  @JsonKey(ignore: true)
  _$$_TasksWithoutRevisionModelCopyWith<_$_TasksWithoutRevisionModel>
      get copyWith => throw _privateConstructorUsedError;
}
