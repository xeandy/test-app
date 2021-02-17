// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userData_DTO.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataDTO _$_$_UserDataDTOFromJson(Map<String, dynamic> json) {
  return _$_UserDataDTO(
    userName: json['userName'] as String,
    email: json['email'] as String,
    phoneNumber: json['phoneNumber'] as String,
    userId: json['userId'] as String,
    role: json['role'] as String,
  );
}

Map<String, dynamic> _$_$_UserDataDTOToJson(_$_UserDataDTO instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'userId': instance.userId,
      'role': instance.role,
    };
