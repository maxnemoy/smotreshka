import 'package:smotreshka/core/models/smotreshka/tv/tv_channel/channel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_list.g.dart';

@JsonSerializable()
class ChannelListDataModel{
  final List<TvChannelDataModel> channels;

  ChannelListDataModel({List<TvChannelDataModel>? channels}) : channels = channels ?? [];

  factory ChannelListDataModel.fromJson(Map<String, dynamic> json) => _$ChannelListDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelListDataModelToJson(this);
}