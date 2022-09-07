// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TasksModel _$$_TasksModelFromJson(Map<String, dynamic> json) =>
    _$_TasksModel(
      status: json['status'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => OnlyTaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      revision: json['revision'] as int,
    );

Map<String, dynamic> _$$_TasksModelToJson(_$_TasksModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list.map((e) => e.toJson()).toList(),
      'revision': instance.revision,
    };

_$_TasksWithoutRevisionModel _$$_TasksWithoutRevisionModelFromJson(
        Map<String, dynamic> json) =>
    _$_TasksWithoutRevisionModel(
      list: (json['list'] as List<dynamic>)
          .map((e) => OnlyTaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TasksWithoutRevisionModelToJson(
        _$_TasksWithoutRevisionModel instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
