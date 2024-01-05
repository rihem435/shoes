// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseLogin _$ApiResponseLoginFromJson(Map<String, dynamic> json) =>
    ApiResponseLogin(
      user: json['user'] == null
          ? null
          : UserData.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
      refrechToken: json['refrechtoken'] as String?,
    );

Map<String, dynamic> _$ApiResponseLoginToJson(ApiResponseLogin instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'refrechtoken': instance.refrechToken,
    };
