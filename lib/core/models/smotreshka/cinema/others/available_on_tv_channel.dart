import 'package:json_annotation/json_annotation.dart';

part 'available_on_tv_channel.g.dart';

@JsonSerializable()
class AvailableOnTvChannelDataModel{
  final String channelId;
  final String lastBroadcastStartsAt;

  AvailableOnTvChannelDataModel({this.channelId = "", 
  this.lastBroadcastStartsAt = ""});

  factory AvailableOnTvChannelDataModel.fromJson(Map<String, dynamic> json) => _$AvailableOnTvChannelDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$AvailableOnTvChannelDataModelToJson(this);
}