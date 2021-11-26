// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThumbnailDataModel _$ThumbnailDataModelFromJson(Map<String, dynamic> json) =>
    ThumbnailDataModel(
      type: json['type'] as String? ?? "",
      path: json['path'] as String? ?? "",
      originalType: json['originalType'] as String? ?? "",
    );

Map<String, dynamic> _$ThumbnailDataModelToJson(ThumbnailDataModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'path': instance.path,
      'originalType': instance.originalType,
    };
