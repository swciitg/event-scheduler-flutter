import './nested/GuestInside.dart';
import './DateTimeConverter.dart';
import './nested/LocationInside.dart';
import 'package:json_annotation/json_annotation.dart';
part 'Event.g.dart';


@JsonSerializable()
class Event{
  int? id = 0;
  String club_name = "";
  String title = "";
  String? subtitle = "";
  String? image;
  String description = "";
  @CustomDateConverterNullable()
  DateTime? date = DateTime.now();
  @CustomDateConverterNullable()
  DateTime? deadline = DateTime.now();
  @CustomTimeConverterNullable()
  DateTime? timeFrom = DateTime.now();
  @CustomTimeConverterNullable()
  DateTime? timeTo = DateTime.now();
  String? remainder = "Custom";
  @CustomDateConverterNullable()
  DateTime? remainderDate = DateTime.now();
  @CustomTimeConverterNullable()
  DateTime? remainderTime = DateTime.now();
  String? announcements = "";
  dynamic resourcesUpload;
  List<dynamic>? rsvpUsers;
  Map<String, List<String>>? feedback;
  Map<String, List<String>>? pageview;
  List<String>? speaker = [];
  List<String>? host = [];
  List<GuestInside>? guests = [];
  Location? location;
  Map<String, dynamic>? announcement = {};
  Map<String, dynamic>? payment = {};
  Map<String, dynamic>? emails = {};
  List<Map<String, dynamic>>? drive_links;


  Event({
    required this.club_name,
    required this.title,
    required this.description,
  });

  factory Event.fromJson(Map<String,dynamic> json) => _$EventFromJson(json);

  Map<String,dynamic> toJson() => _$EventToJson(this);
}

@JsonSerializable()
class EventList{
  List<Event>? events;
  EventList({this.events});

  factory EventList.fromJson(Map<String,dynamic> json) => _$EventListFromJson(json);

  Map<String,dynamic> toJson() => _$EventListToJson(this);
}