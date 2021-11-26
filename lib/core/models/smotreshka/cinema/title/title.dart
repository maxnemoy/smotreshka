import 'package:smotreshka/core/models/smotreshka/cinema/category/category.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/category/genre.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/others/available_on_tv_channel.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/others/branding_method.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/others/country.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/poster/poster.dart';
import 'package:smotreshka/core/models/smotreshka/cinema/poster/thumbnail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'title.g.dart';

@JsonSerializable()
class TitleDataModel{
  final String id;
  final String title;
  final String originalTitle;
  final List<ThumbnailDataModel> thumbnails;
  final List<PosterDataModel> posters;
  final List<GenreDataModel> genres;
  final List<CategoryDataModel> categories;
  final String ageRating;
  final double ratingImdb;
  final double ratingKp;
  final double ratingSource;
  final List<int> years;
  final List<CoutryDataModel> countries;
  final int duration;
  final bool hasSeries;
  final List<AvailableOnTvChannelDataModel> availableOnTvChannels;
  final List<BrandingMethodDataModel> brandingMethods;

  TitleDataModel({ this.id = "", this.title = "", this.originalTitle = "",
  List<ThumbnailDataModel>? thumbnails, List<PosterDataModel>? posters, 
  List<GenreDataModel>? genres, List<CategoryDataModel>? categories, 
  this.ageRating = "", this.ratingImdb = 0, this.ratingKp = 0, 
  this.ratingSource = 0, List<int>? years, List<CoutryDataModel>? countries,
  this.hasSeries = false, this.duration = 0, final List<AvailableOnTvChannelDataModel>? availableOnTvChannels,
  List<BrandingMethodDataModel>? brandingMethods}) : 
  thumbnails = thumbnails ?? [], posters = posters ?? [], 
  genres = genres ?? [], categories = categories ?? [], 
  years = years ?? [], countries = countries ?? [], 
  availableOnTvChannels = availableOnTvChannels ?? [],
  brandingMethods = brandingMethods ?? [];

  factory TitleDataModel.fromJson(Map<String, dynamic> json) => _$TitleDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$TitleDataModelToJson(this);
}