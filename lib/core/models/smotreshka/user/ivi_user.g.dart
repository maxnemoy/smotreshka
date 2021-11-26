// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ivi_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IviUserDataModel _$IviUserDataModelFromJson(Map<String, dynamic> json) =>
    IviUserDataModel(
      id: json['id'] as int? ?? -1,
      expiration: json['expiration'] as int? ?? -1,
      verimatrixId: json['verimatrix_id'] as String? ?? "",
      session: json['session'] as String? ?? "",
      setAt: json['setAt'] as int? ?? -1,
    );

Map<String, dynamic> _$IviUserDataModelToJson(IviUserDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expiration': instance.expiration,
      'verimatrix_id': instance.verimatrixId,
      'session': instance.session,
      'setAt': instance.setAt,
    };
