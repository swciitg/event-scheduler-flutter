import 'package:json_annotation/json_annotation.dart';

part 'DriveLinks.g.dart';

@JsonSerializable()
class DriveLinks{
  List<dynamic>? driveLinks;

  DriveLinks({this.driveLinks});
}

@JsonSerializable()
class DriveLinksInside{
  int? id;
  String? filename;
  String? link;

  DriveLinksInside({this.id, this.filename, this.link});
}
