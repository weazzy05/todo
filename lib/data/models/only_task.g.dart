// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'only_task.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OnlyTaskAdapter extends TypeAdapter<_$TaskModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$TaskModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$TaskModelImpl(
      id: fields[0] as String,
      text: fields[1] as String,
      importance: fields[2] as String,
      deadline: fields[3] as int?,
      done: fields[4] as bool,
      color: fields[5] as String?,
      createdAt: fields[6] as int,
      changedAt: fields[7] as int,
      lastUpdatedBy: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$TaskModelImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.importance)
      ..writeByte(3)
      ..write(obj.deadline)
      ..writeByte(4)
      ..write(obj.done)
      ..writeByte(5)
      ..write(obj.color)
      ..writeByte(6)
      ..write(obj.createdAt)
      ..writeByte(7)
      ..write(obj.changedAt)
      ..writeByte(8)
      ..write(obj.lastUpdatedBy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OnlyTaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskModelImpl _$$TaskModelImplFromJson(Map<String, dynamic> json) =>
    _$TaskModelImpl(
      id: json['id'] as String,
      text: json['text'] as String,
      importance: json['importance'] as String? ?? 'basic',
      deadline: (json['deadline'] as num?)?.toInt(),
      done: json['done'] as bool,
      color: json['color'] as String?,
      createdAt: (json['created_at'] as num).toInt(),
      changedAt: (json['changed_at'] as num).toInt(),
      lastUpdatedBy: json['last_updated_by'] as String,
    );

Map<String, dynamic> _$$TaskModelImplToJson(_$TaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'importance': instance.importance,
      'deadline': instance.deadline,
      'done': instance.done,
      'color': instance.color,
      'created_at': instance.createdAt,
      'changed_at': instance.changedAt,
      'last_updated_by': instance.lastUpdatedBy,
    };
