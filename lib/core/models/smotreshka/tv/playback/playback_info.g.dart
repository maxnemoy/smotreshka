// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playback_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelPlaybackInfoDataModel _$ChannelPlaybackInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelPlaybackInfoDataModel(
      liveTime: json['liveTime'] as int? ?? -1,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) =>
              ChannelLanguageDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      expires: json['expires'] as int? ?? -1,
      multicastStreamsV2: (json['multicastStreamsV2'] as List<dynamic>?)
          ?.map((e) =>
              ChannelMulticastStreamsV2.fromJson(e as Map<String, dynamic>))
          .toList(),
      thumbnailServerUrl: json['thumbnailServerUrl'] as String? ?? "",
      autoScaleOn: json['autoScaleOn'] as bool? ?? false,
      liveDelay: json['liveDelay'] == null
          ? null
          : ChannelLiveDelayDataModel.fromJson(
              json['liveDelay'] as Map<String, dynamic>),
      dvrDepth: json['dvrDepth'] as int? ?? -1,
    );

Map<String, dynamic> _$ChannelPlaybackInfoDataModelToJson(
        ChannelPlaybackInfoDataModel instance) =>
    <String, dynamic>{
      'liveTime': instance.liveTime,
      'languages': instance.languages,
      'expires': instance.expires,
      'multicastStreamsV2': instance.multicastStreamsV2,
      'thumbnailServerUrl': instance.thumbnailServerUrl,
      'autoScaleOn': instance.autoScaleOn,
      'liveDelay': instance.liveDelay,
      'dvrDepth': instance.dvrDepth,
    };
