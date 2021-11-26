// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geners.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelGenersDataModel _$ChannelGenersDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelGenersDataModel(
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ChannelGenersDataModelToJson(
        ChannelGenersDataModel instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
