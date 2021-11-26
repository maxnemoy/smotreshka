// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branding_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandingMethodDataModel _$BrandingMethodDataModelFromJson(
        Map<String, dynamic> json) =>
    BrandingMethodDataModel(
      name: json['name'] as String? ?? "",
      priority: json['priority'] as int? ?? -1,
    );

Map<String, dynamic> _$BrandingMethodDataModelToJson(
        BrandingMethodDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'priority': instance.priority,
    };
