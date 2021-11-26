import 'package:json_annotation/json_annotation.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/title.dart';

part 'titles.g.dart';

@JsonSerializable()
class TitlesDataModel{
  final List<TitleDataModel> titles;

  TitlesDataModel(List<TitleDataModel>? titles) : titles = titles ?? [];
  
  factory TitlesDataModel.fromJson(Map<String, dynamic> json) => _$TitlesDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$TitlesDataModelToJson(this);
}