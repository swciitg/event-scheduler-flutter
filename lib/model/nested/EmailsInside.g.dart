// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'EmailsInside.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmailRegistration _$EmailRegistrationFromJson(Map<String, dynamic> json) =>
    EmailRegistration(
      to: (json['to'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subject: json['subject'] as String?,
      body: json['body'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$EmailRegistrationToJson(EmailRegistration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'to': instance.to,
      'subject': instance.subject,
      'body': instance.body,
    };

EmailScheduled _$EmailScheduledFromJson(Map<String, dynamic> json) =>
    EmailScheduled(
      id: json['id'] as int?,
      to: (json['to'] as List<dynamic>?)?.map((e) => e as String).toList(),
      subject: json['subject'] as String?,
      body: json['body'] as String?,
      date:
          const CustomDateConverterNullable().fromJson(json['date'] as String?),
      time:
          const CustomTimeConverterNullable().fromJson(json['time'] as String?),
    );

Map<String, dynamic> _$EmailScheduledToJson(EmailScheduled instance) =>
    <String, dynamic>{
      'id': instance.id,
      'to': instance.to,
      'subject': instance.subject,
      'body': instance.body,
      'date': const CustomDateConverterNullable().toJson(instance.date),
      'time': const CustomTimeConverterNullable().toJson(instance.time),
    };
