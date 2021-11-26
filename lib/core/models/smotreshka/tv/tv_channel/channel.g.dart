// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvChannelDataModel _$TvChannelDataModelFromJson(Map<String, dynamic> json) =>
    TvChannelDataModel(
      id: json['id'] as String? ?? "",
      info: json['info'] == null
          ? null
          : TvChannelInfoDataModel.fromJson(
              json['info'] as Map<String, dynamic>),
      programs: (json['programs'] as List<dynamic>?)
          ?.map((e) =>
              ChannelProgramDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TvChannelDataModelToJson(TvChannelDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'info': instance.info,
      'programs': instance.programs,
    };
