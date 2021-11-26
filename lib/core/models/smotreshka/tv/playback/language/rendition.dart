import 'package:json_annotation/json_annotation.dart';

part 'rendition.g.dart';

@JsonSerializable()
class ChannelRenditionDataModel{
  @JsonKey(name: 'default')
  final bool isDefault;
  final String id;
  final String caption;
  final String url;
  final bool mayBeIncompatible;
  final bool isOriginal;

  ChannelRenditionDataModel({this.isDefault = false, this.id = "", 
  this.caption = "", this.url = "", this.mayBeIncompatible = false, 
  this.isOriginal = false});

  factory ChannelRenditionDataModel.fromJson(Map<String, dynamic> json) => _$ChannelRenditionDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelRenditionDataModelToJson(this);
}