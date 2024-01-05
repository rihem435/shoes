// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      sId: json['_id'] as String?,
      userName: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      produits: (json['produits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      itemKey: json['itemKey'] as String?,
      iV: json['__v'] as int?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      '_id': instance.sId,
      'username': instance.userName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'produits': instance.produits,
      'itemKey': instance.itemKey,
      '__v': instance.iV,
    };
