// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_schedule_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelScheduleInfoDataModel _$ChannelScheduleInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelScheduleInfoDataModel(
      start: json['start'] as int? ?? -1,
      end: json['end'] as int? ?? -1,
      duration: json['duration'] as int? ?? -1,
    );

Map<String, dynamic> _$ChannelScheduleInfoDataModelToJson(
        ChannelScheduleInfoDataModel instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'duration': instance.duration,
    };
