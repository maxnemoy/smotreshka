// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDataModel _$UserDataModelFromJson(Map<String, dynamic> json) =>
    UserDataModel(
      id: json['id'] as String? ?? "",
      email: json['email'] as String? ?? "",
      name: json['name'] as String? ?? "",
      recentViews: (json['recent_views'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ageRating: json['age_rating'] as int? ?? -1,
      username: json['username'] as String? ?? "",
      session: json['session'] as String? ?? "",
      ivi: json['IVI'] == null
          ? null
          : IviUserDataModel.fromJson(json['IVI'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserDataModelToJson(UserDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'recent_views': instance.recentViews,
      'age_rating': instance.ageRating,
      'username': instance.username,
      'session': instance.session,
      'IVI': instance.ivi,
    };
