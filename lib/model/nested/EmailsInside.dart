import 'package:json_annotation/json_annotation.dart';
import '../DateTimeConverter.dart';

part 'EmailsInside.g.dart';

@JsonSerializable()
class EmailRegistration{
  int? id;
  List<String>? to;
  String? subject;
  String? body;
  EmailRegistration({this.to, this.subject ,this.body});
}

@JsonSerializable()
class EmailScheduled{
  int? id;
  List<String>? to;
  String? subject;
  String? body;
  @CustomDateConverterNullable()
  DateTime? date;
  @CustomTimeConverterNullable()
  DateTime? time;

  EmailScheduled({this.id, this.to, this.subject, this.body, this.date, this.time});
}