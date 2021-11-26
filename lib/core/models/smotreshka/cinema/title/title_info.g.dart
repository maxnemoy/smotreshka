// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleInfoDataModel _$TitleInfoDataModelFromJson(Map<String, dynamic> json) =>
    TitleInfoDataModel(
      preview: json['preview'] == null
          ? null
          : TitleDataModel.fromJson(json['preview'] as Map<String, dynamic>),
      details: json['details'] == null
          ? null
          : TitleDetailDataModel.fromJson(
              json['details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TitleInfoDataModelToJson(TitleInfoDataModel instance) =>
    <String, dynamic>{
      'preview': instance.preview,
      'details': instance.details,
    };
