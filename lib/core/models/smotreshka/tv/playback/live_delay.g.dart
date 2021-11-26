// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_delay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelLiveDelayDataModel _$ChannelLiveDelayDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelLiveDelayDataModel(
      current: json['current'] as int? ?? 0,
      min: json['min'] as int? ?? 0,
      max: json['max'] as int? ?? 0,
    );

Map<String, dynamic> _$ChannelLiveDelayDataModelToJson(
        ChannelLiveDelayDataModel instance) =>
    <String, dynamic>{
      'current': instance.current,
      'min': instance.min,
      'max': instance.max,
    };
