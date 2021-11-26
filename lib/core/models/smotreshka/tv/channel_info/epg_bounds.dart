import 'package:json_annotation/json_annotation.dart';

part 'epg_bounds.g.dart';

@JsonSerializable()
class ChannelEPGBoundsDataModel{
  final int min;
  final int max;

  ChannelEPGBoundsDataModel({this.min = -1, this.max = -1});

  factory ChannelEPGBoundsDataModel.fromJson(Map<String, dynamic> json) => _$ChannelEPGBoundsDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelEPGBoundsDataModelToJson(this);
}