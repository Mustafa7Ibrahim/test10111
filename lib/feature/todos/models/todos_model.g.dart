// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToDosImpl _$$ToDosImplFromJson(Map<String, dynamic> json) => _$ToDosImpl(
      (json['userId'] as num).toInt(),
      (json['id'] as num).toInt(),
      json['title'] as String,
      json['completed'] as bool,
    );

Map<String, dynamic> _$$ToDosImplToJson(_$ToDosImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
