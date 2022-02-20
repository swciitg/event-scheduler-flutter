// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GuestInside.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuestInside _$GuestInsideFromJson(Map<String, dynamic> json) => GuestInside(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      designation: json['designation'] as String?,
      batch: json['batch'] as int?,
    );

Map<String, dynamic> _$GuestInsideToJson(GuestInside instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'designation': instance.designation,
      'batch': instance.batch,
    };
