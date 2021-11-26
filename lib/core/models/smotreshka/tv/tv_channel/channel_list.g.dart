// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelListDataModel _$ChannelListDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelListDataModel(
      channels: (json['channels'] as List<dynamic>?)
          ?.map((e) => TvChannelDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChannelListDataModelToJson(
        ChannelListDataModel instance) =>
    <String, dynamic>{
      'channels': instance.channels,
    };
