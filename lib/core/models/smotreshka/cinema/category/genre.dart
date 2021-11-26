import 'package:json_annotation/json_annotation.dart';

part 'genre.g.dart';

@JsonSerializable()
class GenreDataModel{
  final String id;
  final String title;
  final int priority;

  GenreDataModel({this.id = "", this.title = "", this.priority = -1});

  factory GenreDataModel.fromJson(Map<String, dynamic> json) => _$GenreDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$GenreDataModelToJson(this);
}

