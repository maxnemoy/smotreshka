import 'package:json_annotation/json_annotation.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/category/category.dart';

part 'categories.g.dart';

@JsonSerializable()
class CategoriesDataModel{
  final List<CategoryDataModel> categories;

  CategoriesDataModel(List<CategoryDataModel>? categories) : categories = categories ?? [];
  
  factory CategoriesDataModel.fromJson(Map<String, dynamic> json) => _$CategoriesDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoriesDataModelToJson(this);
}