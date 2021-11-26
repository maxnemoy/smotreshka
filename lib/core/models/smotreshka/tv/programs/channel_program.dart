import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_media_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_meta_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_playback_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_schedule_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_update_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'channel_program.g.dart';

@JsonSerializable()
class ChannelProgramDataModel{
  final String id;
  final ChannelMetaInfoDataModel metaInfo;
  final ChannelScheduleInfoDataModel scheduleInfo;
  final ChannelMediaInfoDataModel mediaInfo;
  final ChannelUpdateInfoDataModel updateInfo;
  final ChannelPlaybackInfoDataModel playbackInfo;

  ChannelProgramDataModel({this.id = "", ChannelMetaInfoDataModel? metaInfo, 
  ChannelScheduleInfoDataModel? scheduleInfo, ChannelMediaInfoDataModel? mediaInfo, 
  ChannelUpdateInfoDataModel? updateInfo, ChannelPlaybackInfoDataModel? playbackInfo}) : 
  metaInfo = metaInfo ?? ChannelMetaInfoDataModel(), scheduleInfo = scheduleInfo ?? ChannelScheduleInfoDataModel(),
  mediaInfo = mediaInfo ?? ChannelMediaInfoDataModel(), updateInfo = updateInfo ?? ChannelUpdateInfoDataModel(),
  playbackInfo = playbackInfo ?? ChannelPlaybackInfoDataModel();

  factory ChannelProgramDataModel.fromJson(Map<String, dynamic> json) => _$ChannelProgramDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelProgramDataModelToJson(this);
}