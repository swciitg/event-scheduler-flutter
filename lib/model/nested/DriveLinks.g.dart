// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'DriveLinks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriveLinks _$DriveLinksFromJson(Map<String, dynamic> json) => DriveLinks(
      driveLinks: json['driveLinks'] as List<dynamic>?,
    );

Map<String, dynamic> _$DriveLinksToJson(DriveLinks instance) =>
    <String, dynamic>{
      'driveLinks': instance.driveLinks,
    };

DriveLinksInside _$DriveLinksInsideFromJson(Map<String, dynamic> json) =>
    DriveLinksInside(
      id: json['id'] as int?,
      filename: json['filename'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$DriveLinksInsideToJson(DriveLinksInside instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'link': instance.link,
    };
