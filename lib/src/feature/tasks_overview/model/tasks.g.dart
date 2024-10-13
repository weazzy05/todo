// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TasksModelImpl _$$TasksModelImplFromJson(Map<String, dynamic> json) =>
    _$TasksModelImpl(
      status: json['status'] as String,
      list: (json['list'] as List<dynamic>)
          .map((e) => OnlyTaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      revision: (json['revision'] as num).toInt(),
    );

Map<String, dynamic> _$$TasksModelImplToJson(_$TasksModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list.map((e) => e.toJson()).toList(),
      'revision': instance.revision,
    };

_$TasksWithoutRevisionModelImpl _$$TasksWithoutRevisionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TasksWithoutRevisionModelImpl(
      list: (json['list'] as List<dynamic>)
          .map((e) => OnlyTaskModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TasksWithoutRevisionModelImplToJson(
        _$TasksWithoutRevisionModelImpl instance) =>
    <String, dynamic>{
      'list': instance.list.map((e) => e.toJson()).toList(),
    };
