// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      status: json['status'] as String,
      element: OnlyTaskModel.fromJson(json['element'] as Map<String, dynamic>),
      revision: (json['revision'] as num).toInt(),
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'element': instance.element.toJson(),
      'revision': instance.revision,
    };

_$TaskWithoutRevisionModelImpl _$$TaskWithoutRevisionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TaskWithoutRevisionModelImpl(
      element: OnlyTaskModel.fromJson(json['element'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TaskWithoutRevisionModelImplToJson(
        _$TaskWithoutRevisionModelImpl instance) =>
    <String, dynamic>{
      'element': instance.element.toJson(),
    };
