// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TasksResponseModel _$TasksResponseModelFromJson(Map<String, dynamic> json) {
  return _TasksModel.fromJson(json);
}

/// @nodoc
mixin _$TasksResponseModel {
  String get status => throw _privateConstructorUsedError;
  List<OnlyTaskModel> get list => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;

  /// Serializes this TasksResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasksResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasksResponseModelCopyWith<TasksResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksResponseModelCopyWith<$Res> {
  factory $TasksResponseModelCopyWith(
          TasksResponseModel value, $Res Function(TasksResponseModel) then) =
      _$TasksResponseModelCopyWithImpl<$Res, TasksResponseModel>;
  @useResult
  $Res call({String status, List<OnlyTaskModel> list, int revision});
}

/// @nodoc
class _$TasksResponseModelCopyWithImpl<$Res, $Val extends TasksResponseModel>
    implements $TasksResponseModelCopyWith<$Res> {
  _$TasksResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? list = null,
    Object? revision = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksModelImplCopyWith<$Res>
    implements $TasksResponseModelCopyWith<$Res> {
  factory _$$TasksModelImplCopyWith(
          _$TasksModelImpl value, $Res Function(_$TasksModelImpl) then) =
      __$$TasksModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, List<OnlyTaskModel> list, int revision});
}

/// @nodoc
class __$$TasksModelImplCopyWithImpl<$Res>
    extends _$TasksResponseModelCopyWithImpl<$Res, _$TasksModelImpl>
    implements _$$TasksModelImplCopyWith<$Res> {
  __$$TasksModelImplCopyWithImpl(
      _$TasksModelImpl _value, $Res Function(_$TasksModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? list = null,
    Object? revision = null,
  }) {
    return _then(_$TasksModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TasksModelImpl extends _TasksModel {
  _$TasksModelImpl(
      {required this.status,
      required final List<OnlyTaskModel> list,
      required this.revision})
      : _list = list,
        super._();

  factory _$TasksModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksModelImplFromJson(json);

  @override
  final String status;
  final List<OnlyTaskModel> _list;
  @override
  List<OnlyTaskModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.revision, revision) ||
                other.revision == revision));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_list), revision);

  /// Create a copy of TasksResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksModelImplCopyWith<_$TasksModelImpl> get copyWith =>
      __$$TasksModelImplCopyWithImpl<_$TasksModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksModelImplToJson(
      this,
    );
  }
}

abstract class _TasksModel extends TasksResponseModel {
  factory _TasksModel(
      {required final String status,
      required final List<OnlyTaskModel> list,
      required final int revision}) = _$TasksModelImpl;
  _TasksModel._() : super._();

  factory _TasksModel.fromJson(Map<String, dynamic> json) =
      _$TasksModelImpl.fromJson;

  @override
  String get status;
  @override
  List<OnlyTaskModel> get list;
  @override
  int get revision;

  /// Create a copy of TasksResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksModelImplCopyWith<_$TasksModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TasksRequestModel _$TasksRequestModelFromJson(Map<String, dynamic> json) {
  return _TasksWithoutRevisionModel.fromJson(json);
}

/// @nodoc
mixin _$TasksRequestModel {
  List<OnlyTaskModel> get list => throw _privateConstructorUsedError;

  /// Serializes this TasksRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TasksRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TasksRequestModelCopyWith<TasksRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksRequestModelCopyWith<$Res> {
  factory $TasksRequestModelCopyWith(
          TasksRequestModel value, $Res Function(TasksRequestModel) then) =
      _$TasksRequestModelCopyWithImpl<$Res, TasksRequestModel>;
  @useResult
  $Res call({List<OnlyTaskModel> list});
}

/// @nodoc
class _$TasksRequestModelCopyWithImpl<$Res, $Val extends TasksRequestModel>
    implements $TasksRequestModelCopyWith<$Res> {
  _$TasksRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksWithoutRevisionModelImplCopyWith<$Res>
    implements $TasksRequestModelCopyWith<$Res> {
  factory _$$TasksWithoutRevisionModelImplCopyWith(
          _$TasksWithoutRevisionModelImpl value,
          $Res Function(_$TasksWithoutRevisionModelImpl) then) =
      __$$TasksWithoutRevisionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OnlyTaskModel> list});
}

/// @nodoc
class __$$TasksWithoutRevisionModelImplCopyWithImpl<$Res>
    extends _$TasksRequestModelCopyWithImpl<$Res,
        _$TasksWithoutRevisionModelImpl>
    implements _$$TasksWithoutRevisionModelImplCopyWith<$Res> {
  __$$TasksWithoutRevisionModelImplCopyWithImpl(
      _$TasksWithoutRevisionModelImpl _value,
      $Res Function(_$TasksWithoutRevisionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$TasksWithoutRevisionModelImpl(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OnlyTaskModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TasksWithoutRevisionModelImpl extends _TasksWithoutRevisionModel {
  _$TasksWithoutRevisionModelImpl({required final List<OnlyTaskModel> list})
      : _list = list,
        super._();

  factory _$TasksWithoutRevisionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TasksWithoutRevisionModelImplFromJson(json);

  final List<OnlyTaskModel> _list;
  @override
  List<OnlyTaskModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'TasksRequestModel(list: $list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksWithoutRevisionModelImpl &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  /// Create a copy of TasksRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksWithoutRevisionModelImplCopyWith<_$TasksWithoutRevisionModelImpl>
      get copyWith => __$$TasksWithoutRevisionModelImplCopyWithImpl<
          _$TasksWithoutRevisionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TasksWithoutRevisionModelImplToJson(
      this,
    );
  }
}

abstract class _TasksWithoutRevisionModel extends TasksRequestModel {
  factory _TasksWithoutRevisionModel(
          {required final List<OnlyTaskModel> list}) =
      _$TasksWithoutRevisionModelImpl;
  _TasksWithoutRevisionModel._() : super._();

  factory _TasksWithoutRevisionModel.fromJson(Map<String, dynamic> json) =
      _$TasksWithoutRevisionModelImpl.fromJson;

  @override
  List<OnlyTaskModel> get list;

  /// Create a copy of TasksRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TasksWithoutRevisionModelImplCopyWith<_$TasksWithoutRevisionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
