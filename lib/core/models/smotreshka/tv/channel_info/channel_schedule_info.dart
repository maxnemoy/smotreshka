import 'package:json_annotation/json_annotation.dart';

part 'channel_schedule_info.g.dart';

@JsonSerializable()
class ChannelScheduleInfoDataModel{
  final int start;
  final int end;
  final int duration;

  ChannelScheduleInfoDataModel({this.start = -1, this.end = -1, this.duration = -1});

  factory ChannelScheduleInfoDataModel.fromJson(Map<String, dynamic> json) => _$ChannelScheduleInfoDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelScheduleInfoDataModelToJson(this);
}