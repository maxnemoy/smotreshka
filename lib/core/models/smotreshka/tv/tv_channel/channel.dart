import 'package:smotreshka/core/models/smotreshka/tv/programs/channel_program.dart';
import 'package:smotreshka/core/models/smotreshka/tv/tv_channel/channel_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel.g.dart';

@JsonSerializable()
class TvChannelDataModel{
  final String id;
  final TvChannelInfoDataModel info;
  final List<ChannelProgramDataModel> programs; 

  TvChannelDataModel({this.id = "", TvChannelInfoDataModel? info,
  List<ChannelProgramDataModel>? programs}) : info = info ?? TvChannelInfoDataModel(),
  programs = programs ?? [];

  factory TvChannelDataModel.fromJson(Map<String, dynamic> json) => _$TvChannelDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$TvChannelDataModelToJson(this);
}