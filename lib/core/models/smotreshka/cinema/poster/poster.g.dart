// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosterDataModel _$PosterDataModelFromJson(Map<String, dynamic> json) =>
    PosterDataModel(
      type: json['type'] as String? ?? "",
      path: json['path'] as String? ?? "",
      aspectRatio: json['aspectRatio'] as String? ?? "",
      originalType: json['originalType'] as String? ?? "",
    );

Map<String, dynamic> _$PosterDataModelToJson(PosterDataModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'path': instance.path,
      'aspectRatio': instance.aspectRatio,
      'originalType': instance.originalType,
    };
