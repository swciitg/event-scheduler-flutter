import 'package:json_annotation/json_annotation.dart';

part 'GuestInside.g.dart';

@JsonSerializable()
class GuestInside{
  int? id;
  String? name;
  String? email;
  String? designation;
  int? batch;

  GuestInside({this.id, this.name, this.email, this.designation, this.batch});

  factory GuestInside.fromJson(Map<String,dynamic> json) => _$GuestInsideFromJson(json);

  Map<String, dynamic> toJson() => _$GuestInsideToJson(this);

}