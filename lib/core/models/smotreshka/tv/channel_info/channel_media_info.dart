import 'package:smotreshka/core/models/smotreshka/tv/other/thumbnails_tv.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_media_info.g.dart';

@JsonSerializable()
class ChannelMediaInfoDataModel{
  final List<ChannelThumbnailDataModel> thumbnails;

  ChannelMediaInfoDataModel({List<ChannelThumbnailDataModel>? thumbnails}) :
  thumbnails = thumbnails ?? [];

  factory ChannelMediaInfoDataModel.fromJson(Map<String, dynamic> json) => _$ChannelMediaInfoDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelMediaInfoDataModelToJson(this);
}