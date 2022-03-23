// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoItem _$$_TodoItemFromJson(Map<String, dynamic> json) => _$_TodoItem(
      id: json['id'] as String,
      cotent: json['cotent'] as String,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      description: json['description'] as String? ?? "",
      isDone: json['isDone'] as bool? ?? false,
    );

Map<String, dynamic> _$$_TodoItemToJson(_$_TodoItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cotent': instance.cotent,
      'created_at': instance.created_at?.toIso8601String(),
      'description': instance.description,
      'isDone': instance.isDone,
    };
