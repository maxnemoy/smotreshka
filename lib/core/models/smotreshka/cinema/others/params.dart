import 'package:json_annotation/json_annotation.dart';

part 'params.g.dart';

@JsonSerializable()
class ParamDataModel{
  final String key;
  final String value;

  ParamDataModel({this.key = "", this.value = ""});

  factory ParamDataModel.fromJson(Map<String, dynamic> json) => _$ParamDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ParamDataModelToJson(this);
}