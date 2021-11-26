import 'package:json_annotation/json_annotation.dart';

part 'channel_social_info.g.dart';

@JsonSerializable()
class ChannelSocialInfoDataModel{
  final String fbShare;
  final String vkShare;
  final String fbShareMoment;
  final String vkShareMoment;

  ChannelSocialInfoDataModel({this.fbShare = "", this.vkShare = "", 
  this.fbShareMoment = "", this.vkShareMoment = ""});

  factory ChannelSocialInfoDataModel.fromJson(Map<String, dynamic> json) => _$ChannelSocialInfoDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelSocialInfoDataModelToJson(this);
}