import 'package:smotreshka/core/models/smotreshka/cinema/title/title.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/title_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'title_info.g.dart';

@JsonSerializable()
class TitleInfoDataModel{
  final TitleDataModel preview;
  final TitleDetailDataModel details;

  TitleInfoDataModel({TitleDataModel? preview, TitleDetailDataModel? details}) :
  preview = preview ?? TitleDataModel(), details = details ?? TitleDetailDataModel();

  factory TitleInfoDataModel.fromJson(Map<String, dynamic> json) => _$TitleInfoDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$TitleInfoDataModelToJson(this);
}