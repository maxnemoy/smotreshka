// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvChannelInfoDataModel _$TvChannelInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    TvChannelInfoDataModel(
      metaInfo: json['metaInfo'] == null
          ? null
          : ChannelMetaInfoDataModel.fromJson(
              json['metaInfo'] as Map<String, dynamic>),
      mediaInfo: json['mediaInfo'] == null
          ? null
          : ChannelMediaInfoDataModel.fromJson(
              json['mediaInfo'] as Map<String, dynamic>),
      playbackInfo: json['playbackInfo'] == null
          ? null
          : ChannelPlaybackInfoDataModel.fromJson(
              json['playbackInfo'] as Map<String, dynamic>),
      updateInfo: json['updateInfo'] == null
          ? null
          : ChannelUpdateInfoDataModel.fromJson(
              json['updateInfo'] as Map<String, dynamic>),
      purchaseInfo: json['purchaseInfo'] == null
          ? null
          : ChannelPurchaseInfoDataModel.fromJson(
              json['purchaseInfo'] as Map<String, dynamic>),
      socialInfo: json['socialInfo'] == null
          ? null
          : ChannelSocialInfoDataModel.fromJson(
              json['socialInfo'] as Map<String, dynamic>),
      epgBounds: json['EPGBounds'] == null
          ? null
          : ChannelEPGBoundsDataModel.fromJson(
              json['EPGBounds'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TvChannelInfoDataModelToJson(
        TvChannelInfoDataModel instance) =>
    <String, dynamic>{
      'metaInfo': instance.metaInfo,
      'mediaInfo': instance.mediaInfo,
      'playbackInfo': instance.playbackInfo,
      'updateInfo': instance.updateInfo,
      'purchaseInfo': instance.purchaseInfo,
      'socialInfo': instance.socialInfo,
      'EPGBounds': instance.epgBounds,
    };
