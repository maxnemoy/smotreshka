import 'package:json_annotation/json_annotation.dart';

part 'geners.g.dart';

@JsonSerializable()
class ChannelGenersDataModel{
  final List<String> genres;

  ChannelGenersDataModel({List<String>? genres}) : genres = genres ?? [];

  factory ChannelGenersDataModel.fromJson(Map<String, dynamic> json) => _$ChannelGenersDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelGenersDataModelToJson(this);
}