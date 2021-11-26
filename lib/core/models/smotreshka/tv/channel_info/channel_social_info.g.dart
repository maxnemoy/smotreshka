// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_social_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelSocialInfoDataModel _$ChannelSocialInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelSocialInfoDataModel(
      fbShare: json['fbShare'] as String? ?? "",
      vkShare: json['vkShare'] as String? ?? "",
      fbShareMoment: json['fbShareMoment'] as String? ?? "",
      vkShareMoment: json['vkShareMoment'] as String? ?? "",
    );

Map<String, dynamic> _$ChannelSocialInfoDataModelToJson(
        ChannelSocialInfoDataModel instance) =>
    <String, dynamic>{
      'fbShare': instance.fbShare,
      'vkShare': instance.vkShare,
      'fbShareMoment': instance.fbShareMoment,
      'vkShareMoment': instance.vkShareMoment,
    };
