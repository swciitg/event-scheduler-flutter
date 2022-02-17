// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LocationInside.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationOffline _$LocationOfflineFromJson(Map<String, dynamic> json) =>
    LocationOffline(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$LocationOfflineToJson(LocationOffline instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

LocationOnline _$LocationOnlineFromJson(Map<String, dynamic> json) =>
    LocationOnline(
      meet_url: json['meet_url'] as String?,
      room_id: json['room_id'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$LocationOnlineToJson(LocationOnline instance) =>
    <String, dynamic>{
      'meet_url': instance.meet_url,
      'room_id': instance.room_id,
      'password': instance.password,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      offline: json['offline'] == null
          ? null
          : LocationOffline.fromJson(json['offline'] as Map<String, dynamic>),
      online: json['online'] == null
          ? null
          : LocationOnline.fromJson(json['online'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'offline': instance.offline,
      'online': instance.online,
    };
