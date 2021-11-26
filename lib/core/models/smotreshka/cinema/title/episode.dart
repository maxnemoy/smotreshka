import 'package:smotreshka/core/models/smotreshka/cinema/title/title.dart';
import 'package:json_annotation/json_annotation.dart';

part 'episode.g.dart';

@JsonSerializable()
class EpisodDataModel{
  final List<TitleDataModel> episodes;

  EpisodDataModel({List<TitleDataModel>? episodes}) : 
  episodes = episodes ?? [];

  factory EpisodDataModel.fromJson(Map<String, dynamic> json) => _$EpisodDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$EpisodDataModelToJson(this);
}