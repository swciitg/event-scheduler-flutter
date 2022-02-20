import 'package:json_annotation/json_annotation.dart';

part 'NestedRequest.g.dart';

@JsonSerializable()
class NestedRequest{
  String method;
  String field;
  String? mode;
  int? id;
  dynamic data;

  NestedRequest({required this.method,required this.field, this.mode, this.id, this.data});

  factory NestedRequest.fromJson(Map<String,dynamic> json) => _$NestedRequestFromJson(json);

  Map<String,dynamic> toJson() => _$NestedRequestToJson(this);
}