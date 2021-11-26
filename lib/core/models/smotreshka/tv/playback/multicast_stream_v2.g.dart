// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multicast_stream_v2.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelMulticastStreamsV2 _$ChannelMulticastStreamsV2FromJson(
        Map<String, dynamic> json) =>
    ChannelMulticastStreamsV2(
      address: json['address'] as String? ?? "",
      path: json['path'] as String? ?? "",
      key: json['key'] as String? ?? "",
      bps: json['bps'] as int? ?? -1,
    );

Map<String, dynamic> _$ChannelMulticastStreamsV2ToJson(
        ChannelMulticastStreamsV2 instance) =>
    <String, dynamic>{
      'address': instance.address,
      'path': instance.path,
      'key': instance.key,
      'bps': instance.bps,
    };
