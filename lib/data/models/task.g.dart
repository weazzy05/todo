// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskModel _$$_TaskModelFromJson(Map<String, dynamic> json) => _$_TaskModel(
      status: json['status'] as String,
      element: OnlyTaskModel.fromJson(json['element'] as Map<String, dynamic>),
      revision: json['revision'] as int,
    );

Map<String, dynamic> _$$_TaskModelToJson(_$_TaskModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'element': instance.element.toJson(),
      'revision': instance.revision,
    };

_$_TaskWithoutRevisionModel _$$_TaskWithoutRevisionModelFromJson(
        Map<String, dynamic> json) =>
    _$_TaskWithoutRevisionModel(
      element: OnlyTaskModel.fromJson(json['element'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TaskWithoutRevisionModelToJson(
        _$_TaskWithoutRevisionModel instance) =>
    <String, dynamic>{
      'element': instance.element.toJson(),
    };
