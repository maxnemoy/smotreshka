import 'package:json_annotation/json_annotation.dart';

part 'ivi_user.g.dart';

@JsonSerializable()
class IviUserDataModel{
  int id;
  int expiration;
  @JsonKey(name: 'verimatrix_id')
  String verimatrixId;
  String session;
  int setAt;

  IviUserDataModel({this.id = -1, this.expiration = -1, this.verimatrixId = "",
   this.session = "", this.setAt = -1});

  factory IviUserDataModel.fromJson(Map<String, dynamic> json) => _$IviUserDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$IviUserDataModelToJson(this);
}