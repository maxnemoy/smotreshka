// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel_purchase_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChannelPurchaseInfoDataModel _$ChannelPurchaseInfoDataModelFromJson(
        Map<String, dynamic> json) =>
    ChannelPurchaseInfoDataModel(
      bought: json['bought'] as bool? ?? false,
      advAccess: json['advAccess'] as bool? ?? false,
    );

Map<String, dynamic> _$ChannelPurchaseInfoDataModelToJson(
        ChannelPurchaseInfoDataModel instance) =>
    <String, dynamic>{
      'bought': instance.bought,
      'advAccess': instance.advAccess,
    };
