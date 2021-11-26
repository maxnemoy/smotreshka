// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleDetailDataModel _$TitleDetailDataModelFromJson(
        Map<String, dynamic> json) =>
    TitleDetailDataModel(
      description: json['description'] as String? ?? "",
      mediaItems: (json['mediaItems'] as List<dynamic>?)
          ?.map((e) => MediaItemDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      brandingMethods: (json['brandingMethods'] as List<dynamic>?)
          ?.map((e) =>
              BrandingMethodDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((e) => SeasonDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TitleDetailDataModelToJson(
        TitleDetailDataModel instance) =>
    <String, dynamic>{
      'description': instance.description,
      'mediaItems': instance.mediaItems,
      'brandingMethods': instance.brandingMethods,
      'seasons': instance.seasons,
    };
