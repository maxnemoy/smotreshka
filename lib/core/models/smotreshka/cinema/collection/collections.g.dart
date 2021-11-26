// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionsDataModel _$CollectionsDataModelFromJson(
        Map<String, dynamic> json) =>
    CollectionsDataModel(
      vodCollections: (json['vodCollections'] as List<dynamic>?)
          ?.map((e) => CollectionDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CollectionsDataModelToJson(
        CollectionsDataModel instance) =>
    <String, dynamic>{
      'vodCollections': instance.vodCollections,
    };
