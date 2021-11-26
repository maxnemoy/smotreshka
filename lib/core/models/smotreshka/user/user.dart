import 'package:json_annotation/json_annotation.dart';
import 'package:smotreshka/core/models/smotreshka/user/ivi_user.dart';

part 'user.g.dart';

@JsonSerializable()
class UserDataModel{
  String id;
  String email;
  String name;
  @JsonKey(name: 'recent_views')
  List<String> recentViews;
  @JsonKey(name: 'age_rating')
  int ageRating;
  String username;
  String session;
  @JsonKey(name: 'IVI')
  IviUserDataModel ivi;
  
  UserDataModel({this.id = "", this.email = "", this.name ="",
  List<String>? recentViews, this.ageRating = -1, this.username = "",
  this.session = "", IviUserDataModel? ivi
  }) : recentViews = recentViews ?? [], ivi = ivi ?? IviUserDataModel() ;

  factory UserDataModel.fromJson(Map<String, dynamic> json) => _$UserDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataModelToJson(this);
}