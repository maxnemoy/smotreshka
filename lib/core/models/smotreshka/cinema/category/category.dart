import 'package:json_annotation/json_annotation.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/category/genre.dart';

part 'category.g.dart';

@JsonSerializable()
class CategoryDataModel{
  final String id;
  final String title;
  final String description;
  final int priority;
  final List<GenreDataModel> genres;

  CategoryDataModel({this.id = "", this.title = "", 
  this.description = "", this.priority = 0, 
  List<GenreDataModel>? genres}) : genres = genres ?? [];

  factory CategoryDataModel.fromJson(Map<String, dynamic> json) => _$CategoryDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryDataModelToJson(this);
}