// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_meta_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelMetaInfoDataModel _$ChannelMetaInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelMetaInfoDataModel(
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ageRating: json['age_rating'] as int? ?? -1,
    );

Map<String, dynamic> _$ChannelMetaInfoDataModelToJson(
        ChannelMetaInfoDataModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'genres': instance.genres,
      'age_rating': instance.ageRating,
    };
