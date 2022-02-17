// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'NestedRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NestedRequest _$NestedRequestFromJson(Map<String, dynamic> json) =>
    NestedRequest(
      method: json['method'] as String,
      field: json['field'] as String,
      mode: json['mode'] as String?,
      id: json['id'] as int?,
      data: json['data'],
    );

Map<String, dynamic> _$NestedRequestToJson(NestedRequest instance) =>
    <String, dynamic>{
      'method': instance.method,
      'field': instance.field,
      'mode': instance.mode,
      'id': instance.id,
      'data': instance.data,
    };
