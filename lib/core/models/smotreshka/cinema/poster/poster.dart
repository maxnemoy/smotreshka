import 'package:json_annotation/json_annotation.dart';

part 'poster.g.dart';

@JsonSerializable()
class PosterDataModel{
  final String type;
  final String path;
  final String aspectRatio;
  final String originalType;

  PosterDataModel({this.type = "", this.path = "", 
  this.aspectRatio = "", this.originalType = ""});

  factory PosterDataModel.fromJson(Map<String, dynamic> json) => _$PosterDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$PosterDataModelToJson(this);
}