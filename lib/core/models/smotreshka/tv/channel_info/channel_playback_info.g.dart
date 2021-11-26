// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_playback_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelPlaybackInfoDataModel _$ChannelPlaybackInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelPlaybackInfoDataModel(
      playUrl: json['playUrl'] as String? ?? "",
      dvrRestriction: json['dvrRestriction'] as bool? ?? false,
    );

Map<String, dynamic> _$ChannelPlaybackInfoDataModelToJson(
        ChannelPlaybackInfoDataModel instance) =>
    <String, dynamic>{
      'playUrl': instance.playUrl,
      'dvrRestriction': instance.dvrRestriction,
    };
