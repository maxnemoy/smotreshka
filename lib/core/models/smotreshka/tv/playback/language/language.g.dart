// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelLanguageDataModel _$ChannelLanguageDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelLanguageDataModel(
      isDefault: json['default'] as bool? ?? false,
      id: json['id'] as String? ?? "",
      caption: json['caption'] as String? ?? "",
      renditions: (json['renditions'] as List<dynamic>?)
          ?.map((e) =>
              ChannelRenditionDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChannelLanguageDataModelToJson(
        ChannelLanguageDataModel instance) =>
    <String, dynamic>{
      'default': instance.isDefault,
      'id': instance.id,
      'caption': instance.caption,
      'renditions': instance.renditions,
    };
