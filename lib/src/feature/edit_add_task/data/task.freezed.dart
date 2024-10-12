// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskResponseModel _$TaskResponseModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskResponseModel {
  String get status => throw _privateConstructorUsedError;
  OnlyTaskModel get element => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;

  /// Serializes this TaskResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskResponseModelCopyWith<TaskResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskResponseModelCopyWith<$Res> {
  factory $TaskResponseModelCopyWith(
          TaskResponseModel value, $Res Function(TaskResponseModel) then) =
      _$TaskResponseModelCopyWithImpl<$Res, TaskResponseModel>;
  @useResult
  $Res call({String status, OnlyTaskModel element, int revision});

  $OnlyTaskModelCopyWith<$Res> get element;
}

/// @nodoc
class _$TaskResponseModelCopyWithImpl<$Res, $Val extends TaskResponseModel>
    implements $TaskResponseModelCopyWith<$Res> {
  _$TaskResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? element = null,
    Object? revision = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of TaskResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OnlyTaskModelCopyWith<$Res> get element {
    return $OnlyTaskModelCopyWith<$Res>(_value.element, (value) {
      return _then(_value.copyWith(element: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskModelImplCopyWith<$Res>
    implements $TaskResponseModelCopyWith<$Res> {
  factory _$$TaskModelImplCopyWith(
          _$TaskModelImpl value, $Res Function(_$TaskModelImpl) then) =
      __$$TaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, OnlyTaskModel element, int revision});

  @override
  $OnlyTaskModelCopyWith<$Res> get element;
}

/// @nodoc
class __$$TaskModelImplCopyWithImpl<$Res>
    extends _$TaskResponseModelCopyWithImpl<$Res, _$TaskModelImpl>
    implements _$$TaskModelImplCopyWith<$Res> {
  __$$TaskModelImplCopyWithImpl(
      _$TaskModelImpl _value, $Res Function(_$TaskModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? element = null,
    Object? revision = null,
  }) {
    return _then(_$TaskModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TaskModelImpl extends _TaskModel {
  _$TaskModelImpl(
      {required this.status, required this.element, required this.revision})
      : super._();

  factory _$TaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskModelImplFromJson(json);

  @override
  final String status;
  @override
  final OnlyTaskModel element;
  @override
  final int revision;

  @override
  String toString() {
    return 'TaskResponseModel(status: $status, element: $element, revision: $revision)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.revision, revision) ||
                other.revision == revision));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, element, revision);

  /// Create a copy of TaskResponseModel
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

abstract class _TaskModel extends TaskResponseModel {
  factory _TaskModel(
      {required final String status,
      required final OnlyTaskModel element,
      required final int revision}) = _$TaskModelImpl;
  _TaskModel._() : super._();

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$TaskModelImpl.fromJson;

  @override
  String get status;
  @override
  OnlyTaskModel get element;
  @override
  int get revision;

  /// Create a copy of TaskResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskRequestModel _$TaskRequestModelFromJson(Map<String, dynamic> json) {
  return _TaskWithoutRevisionModel.fromJson(json);
}

/// @nodoc
mixin _$TaskRequestModel {
  OnlyTaskModel get element => throw _privateConstructorUsedError;

  /// Serializes this TaskRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TaskRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskRequestModelCopyWith<TaskRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskRequestModelCopyWith<$Res> {
  factory $TaskRequestModelCopyWith(
          TaskRequestModel value, $Res Function(TaskRequestModel) then) =
      _$TaskRequestModelCopyWithImpl<$Res, TaskRequestModel>;
  @useResult
  $Res call({OnlyTaskModel element});

  $OnlyTaskModelCopyWith<$Res> get element;
}

/// @nodoc
class _$TaskRequestModelCopyWithImpl<$Res, $Val extends TaskRequestModel>
    implements $TaskRequestModelCopyWith<$Res> {
  _$TaskRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? element = null,
  }) {
    return _then(_value.copyWith(
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
    ) as $Val);
  }

  /// Create a copy of TaskRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OnlyTaskModelCopyWith<$Res> get element {
    return $OnlyTaskModelCopyWith<$Res>(_value.element, (value) {
      return _then(_value.copyWith(element: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskWithoutRevisionModelImplCopyWith<$Res>
    implements $TaskRequestModelCopyWith<$Res> {
  factory _$$TaskWithoutRevisionModelImplCopyWith(
          _$TaskWithoutRevisionModelImpl value,
          $Res Function(_$TaskWithoutRevisionModelImpl) then) =
      __$$TaskWithoutRevisionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OnlyTaskModel element});

  @override
  $OnlyTaskModelCopyWith<$Res> get element;
}

/// @nodoc
class __$$TaskWithoutRevisionModelImplCopyWithImpl<$Res>
    extends _$TaskRequestModelCopyWithImpl<$Res, _$TaskWithoutRevisionModelImpl>
    implements _$$TaskWithoutRevisionModelImplCopyWith<$Res> {
  __$$TaskWithoutRevisionModelImplCopyWithImpl(
      _$TaskWithoutRevisionModelImpl _value,
      $Res Function(_$TaskWithoutRevisionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? element = null,
  }) {
    return _then(_$TaskWithoutRevisionModelImpl(
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TaskWithoutRevisionModelImpl extends _TaskWithoutRevisionModel {
  _$TaskWithoutRevisionModelImpl({required this.element}) : super._();

  factory _$TaskWithoutRevisionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskWithoutRevisionModelImplFromJson(json);

  @override
  final OnlyTaskModel element;

  @override
  String toString() {
    return 'TaskRequestModel(element: $element)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskWithoutRevisionModelImpl &&
            (identical(other.element, element) || other.element == element));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, element);

  /// Create a copy of TaskRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskWithoutRevisionModelImplCopyWith<_$TaskWithoutRevisionModelImpl>
      get copyWith => __$$TaskWithoutRevisionModelImplCopyWithImpl<
          _$TaskWithoutRevisionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskWithoutRevisionModelImplToJson(
      this,
    );
  }
}

abstract class _TaskWithoutRevisionModel extends TaskRequestModel {
  factory _TaskWithoutRevisionModel({required final OnlyTaskModel element}) =
      _$TaskWithoutRevisionModelImpl;
  _TaskWithoutRevisionModel._() : super._();

  factory _TaskWithoutRevisionModel.fromJson(Map<String, dynamic> json) =
      _$TaskWithoutRevisionModelImpl.fromJson;

  @override
  OnlyTaskModel get element;

  /// Create a copy of TaskRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskWithoutRevisionModelImplCopyWith<_$TaskWithoutRevisionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
