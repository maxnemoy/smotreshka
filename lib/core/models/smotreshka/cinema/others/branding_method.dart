import 'package:json_annotation/json_annotation.dart';

part 'branding_method.g.dart';

@JsonSerializable()
class BrandingMethodDataModel{
  final String name;
  final int priority;

  BrandingMethodDataModel({this.name = "", this.priority = -1});

  factory BrandingMethodDataModel.fromJson(Map<String, dynamic> json) => _$BrandingMethodDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$BrandingMethodDataModelToJson(this);
}