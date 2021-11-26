import 'package:json_annotation/json_annotation.dart';

part 'thumbnail.g.dart';

@JsonSerializable()
class ThumbnailDataModel{
  final String type;
  final String path;
  final String originalType;

  ThumbnailDataModel({this.type = "", this.path = "", this.originalType = ""});
  
  factory ThumbnailDataModel.fromJson(Map<String, dynamic> json) => _$ThumbnailDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ThumbnailDataModelToJson(this);
}