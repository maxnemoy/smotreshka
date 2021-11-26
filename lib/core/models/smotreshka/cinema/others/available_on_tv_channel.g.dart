// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_on_tv_channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableOnTvChannelDataModel _$AvailableOnTvChannelDataModelFromJson(
        Map<String, dynamic> json) =>
    AvailableOnTvChannelDataModel(
      channelId: json['channelId'] as String? ?? "",
      lastBroadcastStartsAt: json['lastBroadcastStartsAt'] as String? ?? "",
    );

Map<String, dynamic> _$AvailableOnTvChannelDataModelToJson(
        AvailableOnTvChannelDataModel instance) =>
    <String, dynamic>{
      'channelId': instance.channelId,
      'lastBroadcastStartsAt': instance.lastBroadcastStartsAt,
    };
