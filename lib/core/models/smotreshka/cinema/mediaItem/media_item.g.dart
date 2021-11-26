// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaItemDataModel _$MediaItemDataModelFromJson(Map<String, dynamic> json) =>
    MediaItemDataModel(
      title: json['title'] as String? ?? "",
      source: json['source'] as String? ?? "",
      playbackMethods: (json['playbackMethods'] as List<dynamic>?)
          ?.map((e) => PlaybackDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String? ?? "",
    );

Map<String, dynamic> _$MediaItemDataModelToJson(MediaItemDataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'source': instance.source,
      'playbackMethods': instance.playbackMethods,
      'id': instance.id,
    };
