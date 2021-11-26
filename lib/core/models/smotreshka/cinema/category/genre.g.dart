// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreDataModel _$GenreDataModelFromJson(Map<String, dynamic> json) =>
    GenreDataModel(
      id: json['id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      priority: json['priority'] as int? ?? -1,
    );

Map<String, dynamic> _$GenreDataModelToJson(GenreDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'priority': instance.priority,
    };
