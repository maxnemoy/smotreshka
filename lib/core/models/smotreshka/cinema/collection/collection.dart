import 'package:json_annotation/json_annotation.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/title.dart';

part 'collection.g.dart';

@JsonSerializable()
class CollectionDataModel{
  final String id;
  final int priority;
  final String vodSource;
  final String vodCollectionId;
  final String caption;
  final List<TitleDataModel> titlesList;

  CollectionDataModel({this.id = "", this.priority = -1, 
  this.vodSource = "", this.vodCollectionId = "", 
  this.caption = "", List<TitleDataModel>? titlesList}) : 
  titlesList = titlesList ?? [];

  factory CollectionDataModel.fromJson(Map<String, dynamic> json) => _$CollectionDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$CollectionDataModelToJson(this);
}