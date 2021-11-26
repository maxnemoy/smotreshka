import 'package:json_annotation/json_annotation.dart';

part 'channel_update_info.g.dart';

@JsonSerializable()
class ChannelUpdateInfoDataModel{
  final int mtime;

  ChannelUpdateInfoDataModel({this.mtime = -1});

  factory ChannelUpdateInfoDataModel.fromJson(Map<String, dynamic> json) => _$ChannelUpdateInfoDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelUpdateInfoDataModelToJson(this);
}