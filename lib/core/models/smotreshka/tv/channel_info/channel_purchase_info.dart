import 'package:json_annotation/json_annotation.dart';

part 'channel_purchase_info.g.dart';

@JsonSerializable()
class ChannelPurchaseInfoDataModel{
  final bool bought;
  final bool advAccess;

  ChannelPurchaseInfoDataModel({this.bought = false, this.advAccess = false});

  factory ChannelPurchaseInfoDataModel.fromJson(Map<String, dynamic> json) => _$ChannelPurchaseInfoDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChannelPurchaseInfoDataModelToJson(this);
}