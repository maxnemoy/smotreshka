// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CollectionDataModel _$CollectionDataModelFromJson(Map<String, dynamic> json) =>
    CollectionDataModel(
      id: json['id'] as String? ?? "",
      priority: json['priority'] as int? ?? -1,
      vodSource: json['vodSource'] as String? ?? "",
      vodCollectionId: json['vodCollectionId'] as String? ?? "",
      caption: json['caption'] as String? ?? "",
      titlesList: (json['titlesList'] as List<dynamic>?)
          ?.map((e) => TitleDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CollectionDataModelToJson(
        CollectionDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'priority': instance.priority,
      'vodSource': instance.vodSource,
      'vodCollectionId': instance.vodCollectionId,
      'caption': instance.caption,
      'titlesList': instance.titlesList,
    };
