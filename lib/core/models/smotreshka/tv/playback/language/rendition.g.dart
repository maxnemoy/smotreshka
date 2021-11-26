// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rendition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelRenditionDataModel _$ChannelRenditionDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelRenditionDataModel(
      isDefault: json['default'] as bool? ?? false,
      id: json['id'] as String? ?? "",
      caption: json['caption'] as String? ?? "",
      url: json['url'] as String? ?? "",
      mayBeIncompatible: json['mayBeIncompatible'] as bool? ?? false,
      isOriginal: json['isOriginal'] as bool? ?? false,
    );

Map<String, dynamic> _$ChannelRenditionDataModelToJson(
        ChannelRenditionDataModel instance) =>
    <String, dynamic>{
      'default': instance.isDefault,
      'id': instance.id,
      'caption': instance.caption,
      'url': instance.url,
      'mayBeIncompatible': instance.mayBeIncompatible,
      'isOriginal': instance.isOriginal,
    };
