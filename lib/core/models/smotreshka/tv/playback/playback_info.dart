import 'package:smotreshka/core/models/smotreshka/tv/playback/language/language.dart';
import 'package:smotreshka/core/models/smotreshka/tv/playback/live_delay.dart';
import 'package:smotreshka/core/models/smotreshka/tv/playback/multicast_stream_v2.dart';
import 'package:json_annotation/json_annotation.dart';

part 'playback_info.g.dart';

@JsonSerializable()
class ChannelPlaybackInfoDataModel{
  final int liveTime;
  final List<ChannelLanguageDataModel> languages;
  final int expires;
  final List<ChannelMulticastStreamsV2> multicastStreamsV2;
  final String thumbnailServerUrl;
  final bool autoScaleOn;
  final ChannelLiveDelayDataModel liveDelay;
  final int dvrDepth;

  ChannelPlaybackInfoDataModel({ this.liveTime = -1, List<ChannelLanguageDataModel>? languages,
   this.expires = -1, List<ChannelMulticastStreamsV2>? multicastStreamsV2, 
   this.thumbnailServerUrl = "", this.autoScaleOn = false, ChannelLiveDelayDataModel? liveDelay, 
   this.dvrDepth = -1}) : languages = languages ?? [], multicastStreamsV2 = multicastStreamsV2 ?? [],
   liveDelay = liveDelay ?? ChannelLiveDelayDataModel();

  factory ChannelPlaybackInfoDataModel.fromJson(Map<String, dynamic> json) => _$ChannelPlaybackInfoDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelPlaybackInfoDataModelToJson(this);
}