import 'package:json_annotation/json_annotation.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/others/params.dart';

part 'playback.g.dart';

@JsonSerializable()
class PlaybackDataModel{
  final String name;
  final int priority;
  final List<ParamDataModel> params;

  PlaybackDataModel({this.name = "", this.priority = -1, 
  List<ParamDataModel>? params}) : params = params ?? [];

  factory PlaybackDataModel.fromJson(Map<String, dynamic> json) => _$PlaybackDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$PlaybackDataModelToJson(this);
}