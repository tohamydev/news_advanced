// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_data_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostDataRequestBody _$PostDataRequestBodyFromJson(Map<String, dynamic> json) =>
    PostDataRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$PostDataRequestBodyToJson(
        PostDataRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'name': instance.name,
    };
