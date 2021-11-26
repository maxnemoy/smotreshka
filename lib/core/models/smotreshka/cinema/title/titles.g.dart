// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'titles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitlesDataModel _$TitlesDataModelFromJson(Map<String, dynamic> json) =>
    TitlesDataModel(
      (json['titles'] as List<dynamic>?)
          ?.map((e) => TitleDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TitlesDataModelToJson(TitlesDataModel instance) =>
    <String, dynamic>{
      'titles': instance.titles,
    };
