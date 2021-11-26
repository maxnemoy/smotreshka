import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class CoutryDataModel{
  final String id;
  final String title;

  CoutryDataModel({this.id = "", this.title = ""});

  factory CoutryDataModel.fromJson(Map<String, dynamic> json) => _$CoutryDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$CoutryDataModelToJson(this);
}