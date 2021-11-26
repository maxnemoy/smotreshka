import 'package:json_annotation/json_annotation.dart';

part 'multicast_stream_v2.g.dart';

@JsonSerializable()
class ChannelMulticastStreamsV2{
  final String address;
  final String path;
  final String key;
  final int bps;

  ChannelMulticastStreamsV2({this.address = "", this.path = "", 
  this.key = "", this.bps = -1});

  factory ChannelMulticastStreamsV2.fromJson(Map<String, dynamic> json) => _$ChannelMulticastStreamsV2FromJson(json);
  Map<String, dynamic> toJson() => _$ChannelMulticastStreamsV2ToJson(this);
}