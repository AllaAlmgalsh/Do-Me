// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDo _$$_ToDoFromJson(Map<String, dynamic> json) => _$_ToDo(
      id: json['id'] as String,
      todoTitle: json['todoTitle'] as String,
      description: json['description'] as String,
      date: json['date'] as String,
      isDone: json['isDone'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$$_ToDoToJson(_$_ToDo instance) => <String, dynamic>{
      'id': instance.id,
      'todoTitle': instance.todoTitle,
      'description': instance.description,
      'date': instance.date,
      'isDone': instance.isDone,
      'isDeleted': instance.isDeleted,
      'isFavorite': instance.isFavorite,
    };
