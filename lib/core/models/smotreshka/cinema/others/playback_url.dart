import 'package:json_annotation/json_annotation.dart';

part 'playback_url.g.dart';

@JsonSerializable()
class PlaybackUrlDataModel{
  final String url;

  PlaybackUrlDataModel({this.url = ""}); 

  factory PlaybackUrlDataModel.fromJson(Map<String, dynamic> json) => _$PlaybackUrlDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$PlaybackUrlDataModelToJson(this);
}