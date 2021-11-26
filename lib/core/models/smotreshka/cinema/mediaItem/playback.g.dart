// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaybackDataModel _$PlaybackDataModelFromJson(Map<String, dynamic> json) =>
    PlaybackDataModel(
      name: json['name'] as String? ?? "",
      priority: json['priority'] as int? ?? -1,
      params: (json['params'] as List<dynamic>?)
          ?.map((e) => ParamDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaybackDataModelToJson(PlaybackDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'priority': instance.priority,
      'params': instance.params,
    };
