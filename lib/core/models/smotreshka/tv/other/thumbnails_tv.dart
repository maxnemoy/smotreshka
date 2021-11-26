import 'package:json_annotation/json_annotation.dart';

part 'thumbnails_tv.g.dart';

@JsonSerializable()
class ChannelThumbnailDataModel{
  final String url;
  final String md5;

  ChannelThumbnailDataModel({this.url = "", this.md5 = ""});

  factory ChannelThumbnailDataModel.fromJson(Map<String, dynamic> json) => _$ChannelThumbnailDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelThumbnailDataModelToJson(this);
}