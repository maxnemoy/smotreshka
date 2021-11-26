import 'package:json_annotation/json_annotation.dart';

part 'channel_meta_info.g.dart';

@JsonSerializable()
class ChannelMetaInfoDataModel{
  final String title;
  final String description;
  final List<String> genres;
  @JsonKey(name: 'age_rating')
  final int ageRating;

  ChannelMetaInfoDataModel({this.title = "", this.description = "", 
  List<String>? genres, this.ageRating = -1}) : genres = genres ?? [];

  factory ChannelMetaInfoDataModel.fromJson(Map<String, dynamic> json) => _$ChannelMetaInfoDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelMetaInfoDataModelToJson(this);
}