import 'package:json_annotation/json_annotation.dart';

part 'Microsoft.g.dart';

@JsonSerializable()
class Microsoft{
  String token;

  Microsoft(this.token);

  factory Microsoft.fromJson(Map<String,dynamic> json) => _$MicrosoftFromJson(json);
  Map<String,dynamic> toJson() => _$MicrosoftToJson(this);
}