// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AnnouncementInside.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnouncementFixed _$AnnouncementFixedFromJson(Map<String, dynamic> json) =>
    AnnouncementFixed(
      id: json['id'] as int?,
      announcement: json['announcement'] as String?,
    );

Map<String, dynamic> _$AnnouncementFixedToJson(AnnouncementFixed instance) =>
    <String, dynamic>{
      'id': instance.id,
      'announcement': instance.announcement,
    };

AnnouncementDynamic _$AnnouncementDynamicFromJson(Map<String, dynamic> json) =>
    AnnouncementDynamic(
      id: json['id'] as int?,
      date:
          const CustomDateConverterNullable().fromJson(json['date'] as String?),
      time:
          const CustomTimeConverterNullable().fromJson(json['time'] as String?),
      announcement: json['announcement'] as String?,
    );

Map<String, dynamic> _$AnnouncementDynamicToJson(
        AnnouncementDynamic instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': const CustomDateConverterNullable().toJson(instance.date),
      'time': const CustomTimeConverterNullable().toJson(instance.time),
      'announcement': instance.announcement,
    };

Announcement _$AnnouncementFromJson(Map<String, dynamic> json) => Announcement(
      announcementFixed: json['announcementFixed'] == null
          ? null
          : AnnouncementFixed.fromJson(
              json['announcementFixed'] as Map<String, dynamic>),
      announcementDynamic: json['announcementDynamic'] == null
          ? null
          : AnnouncementDynamic.fromJson(
              json['announcementDynamic'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnnouncementToJson(Announcement instance) =>
    <String, dynamic>{
      'announcementFixed': instance.announcementFixed,
      'announcementDynamic': instance.announcementDynamic,
    };
