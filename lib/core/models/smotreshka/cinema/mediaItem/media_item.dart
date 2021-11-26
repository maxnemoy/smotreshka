import 'package:json_annotation/json_annotation.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/mediaItem/playback.dart';

part 'media_item.g.dart';

@JsonSerializable()
class MediaItemDataModel{
  final String title;
  final String source;
  final List<PlaybackDataModel> playbackMethods;
  final String id;

  MediaItemDataModel({this.title = "", this.source = "", 
  List<PlaybackDataModel>? playbackMethods, this.id = ""}) : 
  playbackMethods = playbackMethods ?? [];

  factory MediaItemDataModel.fromJson(Map<String, dynamic> json) => _$MediaItemDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$MediaItemDataModelToJson(this);
}