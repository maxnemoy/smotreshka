import 'package:smotreshka/core/models/smotreshka/cinema/mediaItem/media_item.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/others/branding_method.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/title/season.dart';
import 'package:json_annotation/json_annotation.dart';

part 'title_detail.g.dart';

@JsonSerializable()
class TitleDetailDataModel{
  final String description;
  final List<MediaItemDataModel> mediaItems;
  final List<BrandingMethodDataModel> brandingMethods;
  final List<SeasonDataModel> seasons;

  TitleDetailDataModel({this.description = "", List<MediaItemDataModel>? mediaItems, 
  List<BrandingMethodDataModel>? brandingMethods, List<SeasonDataModel>? seasons}) : 
  mediaItems = mediaItems ?? [],  brandingMethods = brandingMethods ?? [],
  seasons = seasons ?? [];

  factory TitleDetailDataModel.fromJson(Map<String, dynamic> json) => _$TitleDetailDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$TitleDetailDataModelToJson(this);
}