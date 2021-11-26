// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_program.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelProgramDataModel _$ChannelProgramDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelProgramDataModel(
      id: json['id'] as String? ?? "",
      metaInfo: json['metaInfo'] == null
          ? null
          : ChannelMetaInfoDataModel.fromJson(
              json['metaInfo'] as Map<String, dynamic>),
      scheduleInfo: json['scheduleInfo'] == null
          ? null
          : ChannelScheduleInfoDataModel.fromJson(
              json['scheduleInfo'] as Map<String, dynamic>),
      mediaInfo: json['mediaInfo'] == null
          ? null
          : ChannelMediaInfoDataModel.fromJson(
              json['mediaInfo'] as Map<String, dynamic>),
      updateInfo: json['updateInfo'] == null
          ? null
          : ChannelUpdateInfoDataModel.fromJson(
              json['updateInfo'] as Map<String, dynamic>),
      playbackInfo: json['playbackInfo'] == null
          ? null
          : ChannelPlaybackInfoDataModel.fromJson(
              json['playbackInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChannelProgramDataModelToJson(
        ChannelProgramDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metaInfo': instance.metaInfo,
      'scheduleInfo': instance.scheduleInfo,
      'mediaInfo': instance.mediaInfo,
      'updateInfo': instance.updateInfo,
      'playbackInfo': instance.playbackInfo,
    };
