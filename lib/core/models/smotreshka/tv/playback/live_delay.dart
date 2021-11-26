import 'package:json_annotation/json_annotation.dart';

part 'live_delay.g.dart';

@JsonSerializable()
class ChannelLiveDelayDataModel{
  final int current;
  final int min;
  final int max;

  ChannelLiveDelayDataModel({this.current = 0, this.min = 0,
  this.max = 0});

  factory ChannelLiveDelayDataModel.fromJson(Map<String, dynamic> json) => _$ChannelLiveDelayDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelLiveDelayDataModelToJson(this);
}