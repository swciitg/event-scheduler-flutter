import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

class CustomDateConverterNullable implements JsonConverter<DateTime?, String?> {
  const CustomDateConverterNullable();

  @override
  DateTime? fromJson(String? json) {

    final _dateFormatter = DateFormat("yyyy-MM-dd");
    return json==null ? null:  _dateFormatter.parse(json);
  }

  @override
  String? toJson(DateTime? dateTime) {
    try {
      final _dateFormatter = DateFormat("yyyy-MM-dd");
      return dateTime==null?null : _dateFormatter.format(dateTime);
    } catch (e) {
      return dateTime.toString();
    }
  }
}

class CustomDateConverter implements JsonConverter<DateTime, String> {
  const CustomDateConverter();

  @override
  DateTime fromJson(String json) {

    final _dateFormatter = DateFormat("yyyy-MM-dd");
    return _dateFormatter.parse(json);
  }

  @override
  String toJson(DateTime dateTime) {
    try {
      final _dateFormatter = DateFormat("yyyy-MM-dd");
      return _dateFormatter.format(dateTime);
    } catch (e) {
      return dateTime.toString();
    }
  }
}
class CustomTimeConverterNullable implements JsonConverter<DateTime?, String?> {
  const CustomTimeConverterNullable();

  @override
  DateTime? fromJson(String? json) {

    final _dateFormatter = DateFormat("HH:mm:ss");
    return json==null ? null:  _dateFormatter.parse(json);
  }

  @override
  String? toJson(DateTime? dateTime) {
    try {
      final _dateFormatter = DateFormat("HH:mm:ss");
      return dateTime==null?null : _dateFormatter.format(dateTime);
    } catch (e) {
      return dateTime.toString();
    }
  }
}

class CustomTimeConverter implements JsonConverter<DateTime, String> {
  const CustomTimeConverter();

  @override
  DateTime fromJson(String json) {

    final _dateFormatter = DateFormat("HH:mm:ss");
    return _dateFormatter.parse(json);
  }

  @override
  String toJson(DateTime dateTime) {
    try {
      final _dateFormatter = DateFormat("HH:mm:ss");
      return _dateFormatter.format(dateTime);
    } catch (e) {
      return dateTime.toString();
    }
  }
}