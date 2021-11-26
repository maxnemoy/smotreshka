// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epg_bounds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelEPGBoundsDataModel _$ChannelEPGBoundsDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelEPGBoundsDataModel(
      min: json['min'] as int? ?? -1,
      max: json['max'] as int? ?? -1,
    );

Map<String, dynamic> _$ChannelEPGBoundsDataModelToJson(
        ChannelEPGBoundsDataModel instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
    };
