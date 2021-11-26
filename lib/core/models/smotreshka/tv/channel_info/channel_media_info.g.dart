// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_media_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelMediaInfoDataModel _$ChannelMediaInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelMediaInfoDataModel(
      thumbnails: (json['thumbnails'] as List<dynamic>?)
          ?.map((e) =>
              ChannelThumbnailDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChannelMediaInfoDataModelToJson(
        ChannelMediaInfoDataModel instance) =>
    <String, dynamic>{
      'thumbnails': instance.thumbnails,
    };
