import 'package:json_annotation/json_annotation.dart';
import 'package:smotreshka/core/models/smotreshka/tv/playback/language/rendition.dart';

part 'language.g.dart';

@JsonSerializable()
class ChannelLanguageDataModel{
  @JsonKey(name: 'default')
  final bool isDefault;
  final String id;
  final String  caption;
  final List<ChannelRenditionDataModel> renditions;

  ChannelLanguageDataModel({this.isDefault = false, this.id = "", 
  this.caption = "", List<ChannelRenditionDataModel>? renditions}) :
  renditions = renditions ?? [];

  factory ChannelLanguageDataModel.fromJson(Map<String, dynamic> json) => _$ChannelLanguageDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelLanguageDataModelToJson(this);  
}