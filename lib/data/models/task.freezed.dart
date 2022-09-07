// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskResponseModel _$TaskResponseModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskResponseModel {
  String get status => throw _privateConstructorUsedError;
  OnlyTaskModel get element => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskResponseModelCopyWith<TaskResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskResponseModelCopyWith<$Res> {
  factory $TaskResponseModelCopyWith(
          TaskResponseModel value, $Res Function(TaskResponseModel) then) =
      _$TaskResponseModelCopyWithImpl<$Res>;
  $Res call({String status, OnlyTaskModel element, int revision});

  $OnlyTaskModelCopyWith<$Res> get element;
}

/// @nodoc
class _$TaskResponseModelCopyWithImpl<$Res>
    implements $TaskResponseModelCopyWith<$Res> {
  _$TaskResponseModelCopyWithImpl(this._value, this._then);

  final TaskResponseModel _value;
  // ignore: unused_field
  final $Res Function(TaskResponseModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? element = freezed,
    Object? revision = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $OnlyTaskModelCopyWith<$Res> get element {
    return $OnlyTaskModelCopyWith<$Res>(_value.element, (value) {
      return _then(_value.copyWith(element: value));
    });
  }
}

/// @nodoc
abstract class _$$_TaskModelCopyWith<$Res>
    implements $TaskResponseModelCopyWith<$Res> {
  factory _$$_TaskModelCopyWith(
          _$_TaskModel value, $Res Function(_$_TaskModel) then) =
      __$$_TaskModelCopyWithImpl<$Res>;
  @override
  $Res call({String status, OnlyTaskModel element, int revision});

  @override
  $OnlyTaskModelCopyWith<$Res> get element;
}

/// @nodoc
class __$$_TaskModelCopyWithImpl<$Res>
    extends _$TaskResponseModelCopyWithImpl<$Res>
    implements _$$_TaskModelCopyWith<$Res> {
  __$$_TaskModelCopyWithImpl(
      _$_TaskModel _value, $Res Function(_$_TaskModel) _then)
      : super(_value, (v) => _then(v as _$_TaskModel));

  @override
  _$_TaskModel get _value => super._value as _$_TaskModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? element = freezed,
    Object? revision = freezed,
  }) {
    return _then(_$_TaskModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TaskModel extends _TaskModel {
  _$_TaskModel(
      {required this.status, required this.element, required this.revision})
      : super._();

  factory _$_TaskModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.element, element) &&
            const DeepCollectionEquality().equals(other.revision, revision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(element),
      const DeepCollectionEquality().hash(revision));

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

abstract class _TaskModel extends TaskResponseModel {
  factory _TaskModel(
      {required final String status,
      required final OnlyTaskModel element,
      required final int revision}) = _$_TaskModel;
  _TaskModel._() : super._();

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$_TaskModel.fromJson;

  @override
  String get status;
  @override
  OnlyTaskModel get element;
  @override
  int get revision;
  @override
  @JsonKey(ignore: true)
  _$$_TaskModelCopyWith<_$_TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskRequestModel _$TaskRequestModelFromJson(Map<String, dynamic> json) {
  return _TaskWithoutRevisionModel.fromJson(json);
}

/// @nodoc
mixin _$TaskRequestModel {
  OnlyTaskModel get element => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskRequestModelCopyWith<TaskRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskRequestModelCopyWith<$Res> {
  factory $TaskRequestModelCopyWith(
          TaskRequestModel value, $Res Function(TaskRequestModel) then) =
      _$TaskRequestModelCopyWithImpl<$Res>;
  $Res call({OnlyTaskModel element});

  $OnlyTaskModelCopyWith<$Res> get element;
}

/// @nodoc
class _$TaskRequestModelCopyWithImpl<$Res>
    implements $TaskRequestModelCopyWith<$Res> {
  _$TaskRequestModelCopyWithImpl(this._value, this._then);

  final TaskRequestModel _value;
  // ignore: unused_field
  final $Res Function(TaskRequestModel) _then;

  @override
  $Res call({
    Object? element = freezed,
  }) {
    return _then(_value.copyWith(
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
    ));
  }

  @override
  $OnlyTaskModelCopyWith<$Res> get element {
    return $OnlyTaskModelCopyWith<$Res>(_value.element, (value) {
      return _then(_value.copyWith(element: value));
    });
  }
}

/// @nodoc
abstract class _$$_TaskWithoutRevisionModelCopyWith<$Res>
    implements $TaskRequestModelCopyWith<$Res> {
  factory _$$_TaskWithoutRevisionModelCopyWith(
          _$_TaskWithoutRevisionModel value,
          $Res Function(_$_TaskWithoutRevisionModel) then) =
      __$$_TaskWithoutRevisionModelCopyWithImpl<$Res>;
  @override
  $Res call({OnlyTaskModel element});

  @override
  $OnlyTaskModelCopyWith<$Res> get element;
}

/// @nodoc
class __$$_TaskWithoutRevisionModelCopyWithImpl<$Res>
    extends _$TaskRequestModelCopyWithImpl<$Res>
    implements _$$_TaskWithoutRevisionModelCopyWith<$Res> {
  __$$_TaskWithoutRevisionModelCopyWithImpl(_$_TaskWithoutRevisionModel _value,
      $Res Function(_$_TaskWithoutRevisionModel) _then)
      : super(_value, (v) => _then(v as _$_TaskWithoutRevisionModel));

  @override
  _$_TaskWithoutRevisionModel get _value =>
      super._value as _$_TaskWithoutRevisionModel;

  @override
  $Res call({
    Object? element = freezed,
  }) {
    return _then(_$_TaskWithoutRevisionModel(
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as OnlyTaskModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_TaskWithoutRevisionModel extends _TaskWithoutRevisionModel {
  _$_TaskWithoutRevisionModel({required this.element}) : super._();

  factory _$_TaskWithoutRevisionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskWithoutRevisionModelFromJson(json);

  @override
  final OnlyTaskModel element;

  @override
  String toString() {
    return 'TaskRequestModel(element: $element)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskWithoutRevisionModel &&
            const DeepCollectionEquality().equals(other.element, element));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(element));

  @JsonKey(ignore: true)
  @override
  _$$_TaskWithoutRevisionModelCopyWith<_$_TaskWithoutRevisionModel>
      get copyWith => __$$_TaskWithoutRevisionModelCopyWithImpl<
          _$_TaskWithoutRevisionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskWithoutRevisionModelToJson(
      this,
    );
  }
}

abstract class _TaskWithoutRevisionModel extends TaskRequestModel {
  factory _TaskWithoutRevisionModel({required final OnlyTaskModel element}) =
      _$_TaskWithoutRevisionModel;
  _TaskWithoutRevisionModel._() : super._();

  factory _TaskWithoutRevisionModel.fromJson(Map<String, dynamic> json) =
      _$_TaskWithoutRevisionModel.fromJson;

  @override
  OnlyTaskModel get element;
  @override
  @JsonKey(ignore: true)
  _$$_TaskWithoutRevisionModelCopyWith<_$_TaskWithoutRevisionModel>
      get copyWith => throw _privateConstructorUsedError;
}
