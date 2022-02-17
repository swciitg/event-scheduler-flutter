import 'package:json_annotation/json_annotation.dart';

part 'LocationInside.g.dart';

@JsonSerializable()
class LocationOffline{
  String? latitude;
  String? longitude;

  LocationOffline({this.latitude, this.longitude});

  factory LocationOffline.fromJson(Map<String,dynamic> json) => _$LocationOfflineFromJson(json);
  Map<String,dynamic> toJson() => _$LocationOfflineToJson(this);
}

@JsonSerializable()
class LocationOnline{
  String? meet_url;
  String? room_id;
  String? password;

  LocationOnline({this.meet_url, this.room_id, this.password});

  factory LocationOnline.fromJson(Map<String,dynamic> json) => _$LocationOnlineFromJson(json);
  Map<String,dynamic> toJson() => _$LocationOnlineToJson(this);
}

@JsonSerializable()
class Location{
  LocationOffline? offline;
  LocationOnline? online;
  Location({this.offline, this.online});

  factory Location.fromJson(Map<String,dynamic> json) => _$LocationFromJson(json);
  Map<String,dynamic> toJson() => _$LocationToJson(this);
}
