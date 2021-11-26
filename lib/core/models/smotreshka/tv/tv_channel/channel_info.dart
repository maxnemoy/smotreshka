import 'package:json_annotation/json_annotation.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_media_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_meta_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_playback_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_purchase_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_social_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/channel_update_info.dart';
import 'package:smotreshka/core/models/smotreshka/tv/channel_info/epg_bounds.dart';

part 'channel_info.g.dart';

@JsonSerializable()
class TvChannelInfoDataModel{
  final ChannelMetaInfoDataModel metaInfo;
  final ChannelMediaInfoDataModel mediaInfo;
  final ChannelPlaybackInfoDataModel playbackInfo;
  final ChannelUpdateInfoDataModel updateInfo;
  final ChannelPurchaseInfoDataModel purchaseInfo;
  final ChannelSocialInfoDataModel socialInfo;
  @JsonKey(name: 'EPGBounds')
  final ChannelEPGBoundsDataModel epgBounds;

  TvChannelInfoDataModel({ChannelMetaInfoDataModel? metaInfo, ChannelMediaInfoDataModel? mediaInfo,
   ChannelPlaybackInfoDataModel? playbackInfo, ChannelUpdateInfoDataModel? updateInfo,
    ChannelPurchaseInfoDataModel? purchaseInfo, ChannelSocialInfoDataModel? socialInfo, ChannelEPGBoundsDataModel? epgBounds}) :
    metaInfo = metaInfo ?? ChannelMetaInfoDataModel(), mediaInfo = mediaInfo ?? ChannelMediaInfoDataModel(),
    playbackInfo = playbackInfo ?? ChannelPlaybackInfoDataModel(), updateInfo = updateInfo ?? ChannelUpdateInfoDataModel(),
    purchaseInfo = purchaseInfo ?? ChannelPurchaseInfoDataModel(), socialInfo = socialInfo ?? ChannelSocialInfoDataModel(),
    epgBounds = epgBounds ?? ChannelEPGBoundsDataModel();

  factory TvChannelInfoDataModel.fromJson(Map<String, dynamic> json) => _$TvChannelInfoDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$TvChannelInfoDataModelToJson(this);
}