import 'package:json_annotation/json_annotation.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/collection/collection.dart';

part 'collections.g.dart';

@JsonSerializable()
class CollectionsDataModel{
  final List<CollectionDataModel> vodCollections;

  CollectionsDataModel({List<CollectionDataModel>? vodCollections}) : vodCollections = vodCollections ?? [];

  factory CollectionsDataModel.fromJson(Map<String, dynamic> json) => _$CollectionsDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionsDataModelToJson(this);
}