import 'package:json_annotation/json_annotation.dart';

import '../DateTimeConverter.dart';

part 'AnnouncementInside.g.dart';

@JsonSerializable()
class AnnouncementFixed{
  int? id;
  String? announcement;

  AnnouncementFixed({this.id, this.announcement});

  factory AnnouncementFixed.fromJson(Map<String,dynamic> json) => _$AnnouncementFixedFromJson(json);
  Map<String,dynamic> toJson() => _$AnnouncementFixedToJson(this);
}

@JsonSerializable()
class AnnouncementDynamic{
  int? id;
  @CustomDateConverterNullable()
  DateTime? date;
  @CustomTimeConverterNullable()
  DateTime? time;
  String? announcement;

  AnnouncementDynamic({this.id, this.date, this.time, this.announcement});

  factory AnnouncementDynamic.fromJson(Map<String,dynamic> json) => _$AnnouncementDynamicFromJson(json);
  Map<String,dynamic> toJson() => _$AnnouncementDynamicToJson(this);
}

@JsonSerializable()
class Announcement{
  AnnouncementFixed? announcementFixed;
  AnnouncementDynamic? announcementDynamic;

  Announcement({this.announcementFixed, this.announcementDynamic});

}