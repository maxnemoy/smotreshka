// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpisodDataModel _$EpisodDataModelFromJson(Map<String, dynamic> json) =>
    EpisodDataModel(
      episodes: (json['episodes'] as List<dynamic>?)
          ?.map((e) => TitleDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodDataModelToJson(EpisodDataModel instance) =>
    <String, dynamic>{
      'episodes': instance.episodes,
    };
