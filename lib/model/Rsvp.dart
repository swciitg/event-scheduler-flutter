import './Event.dart';
import 'package:json_annotation/json_annotation.dart';
part 'Rsvp.g.dart';

@JsonSerializable()
class Rsvp{
  List<Event>? rsvp;

  Rsvp({this.rsvp});

  factory Rsvp.fromJson(Map<String,dynamic> json) => _$RsvpFromJson(json);

  Map<String,dynamic> toJson() => _$RsvpToJson(this);
}