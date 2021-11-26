// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TitleDataModel _$TitleDataModelFromJson(Map<String, dynamic> json) =>
    TitleDataModel(
      id: json['id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      originalTitle: json['originalTitle'] as String? ?? "",
      thumbnails: (json['thumbnails'] as List<dynamic>?)
          ?.map((e) => ThumbnailDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      posters: (json['posters'] as List<dynamic>?)
          ?.map((e) => PosterDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => GenreDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => CategoryDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ageRating: json['ageRating'] as String? ?? "",
      ratingImdb: (json['ratingImdb'] as num?)?.toDouble() ?? 0,
      ratingKp: (json['ratingKp'] as num?)?.toDouble() ?? 0,
      ratingSource: (json['ratingSource'] as num?)?.toDouble() ?? 0,
      years: (json['years'] as List<dynamic>?)?.map((e) => e as int).toList(),
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => CoutryDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasSeries: json['hasSeries'] as bool? ?? false,
      duration: json['duration'] as int? ?? 0,
      availableOnTvChannels: (json['availableOnTvChannels'] as List<dynamic>?)
          ?.map((e) =>
              AvailableOnTvChannelDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      brandingMethods: (json['brandingMethods'] as List<dynamic>?)
          ?.map((e) =>
              BrandingMethodDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TitleDataModelToJson(TitleDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'thumbnails': instance.thumbnails,
      'posters': instance.posters,
      'genres': instance.genres,
      'categories': instance.categories,
      'ageRating': instance.ageRating,
      'ratingImdb': instance.ratingImdb,
      'ratingKp': instance.ratingKp,
      'ratingSource': instance.ratingSource,
      'years': instance.years,
      'countries': instance.countries,
      'duration': instance.duration,
      'hasSeries': instance.hasSeries,
      'availableOnTvChannels': instance.availableOnTvChannels,
      'brandingMethods': instance.brandingMethods,
    };
