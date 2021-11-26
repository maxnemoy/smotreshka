import 'package:json_annotation/json_annotation.dart';

part 'season.g.dart';

@JsonSerializable()
class SeasonDataModel{
  final String id;
  final int number;

  SeasonDataModel({this.id = "", this.number = 0});

  factory SeasonDataModel.fromJson(Map<String, dynamic> json) => _$SeasonDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$SeasonDataModelToJson(this);
}