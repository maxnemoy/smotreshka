import 'package:json_annotation/json_annotation.dart';

part 'channel_playback_info.g.dart';

@JsonSerializable()
class ChannelPlaybackInfoDataModel{
  final String playUrl;
  final bool dvrRestriction;

  ChannelPlaybackInfoDataModel({this.playUrl = "", 
  this.dvrRestriction = false});

  factory ChannelPlaybackInfoDataModel.fromJson(Map<String, dynamic> json) => _$ChannelPlaybackInfoDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelPlaybackInfoDataModelToJson(this);
}