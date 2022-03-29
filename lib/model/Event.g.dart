// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      club_name: json['club_name'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    )
      ..id = json['id'] as int?
      ..subtitle = json['subtitle'] as String?
      ..image = json['image'] as String?
      ..date =
          const CustomDateConverterNullable().fromJson(json['date'] as String?)
      ..deadline = const CustomDateConverterNullable()
          .fromJson(json['deadline'] as String?)
      ..timeFrom = const CustomTimeConverterNullable()
          .fromJson(json['timeFrom'] as String?)
      ..timeTo = const CustomTimeConverterNullable()
          .fromJson(json['timeTo'] as String?)
      ..remainder = json['remainder'] as String?
      ..remainderDate = const CustomDateConverterNullable()
          .fromJson(json['remainderDate'] as String?)
      ..remainderTime = const CustomTimeConverterNullable()
          .fromJson(json['remainderTime'] as String?)
      ..announcements = json['announcements'] as String?
      ..resourcesUpload = json['resourcesUpload']
      ..rsvpUsers = json['rsvpUsers'] as List<dynamic>?
      ..feedback = (json['feedback'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      )
      ..pageview = (json['pageview'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      )
      ..speaker =
          (json['speaker'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..host =
          (json['host'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..guests = (json['guests'] as List<dynamic>?)
          ?.map((e) => GuestInside.fromJson(e as Map<String, dynamic>))
          .toList()
      ..location = json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>)
      ..announcement = json['announcement'] as Map<String, dynamic>?
      ..payment = json['payment'] as Map<String, dynamic>?
      ..emails = json['emails'] as Map<String, dynamic>?
      ..drive_links = (json['drive_links'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList();

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'id': instance.id,
      'club_name': instance.club_name,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'image': instance.image,
      'description': instance.description,
      'date': const CustomDateConverterNullable().toJson(instance.date),
      'deadline': const CustomDateConverterNullable().toJson(instance.deadline),
      'timeFrom': const CustomTimeConverterNullable().toJson(instance.timeFrom),
      'timeTo': const CustomTimeConverterNullable().toJson(instance.timeTo),
      'remainder': instance.remainder,
      'remainderDate':
          const CustomDateConverterNullable().toJson(instance.remainderDate),
      'remainderTime':
          const CustomTimeConverterNullable().toJson(instance.remainderTime),
      'announcements': instance.announcements,
      'resourcesUpload': instance.resourcesUpload,
      'rsvpUsers': instance.rsvpUsers,
      'feedback': instance.feedback,
      'pageview': instance.pageview,
      'speaker': instance.speaker,
      'host': instance.host,
      'guests': instance.guests,
      'location': instance.location,
      'announcement': instance.announcement,
      'payment': instance.payment,
      'emails': instance.emails,
      'drive_links': instance.drive_links,
    };

EventList _$EventListFromJson(Map<String, dynamic> json) => EventList(
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EventListToJson(EventList instance) => <String, dynamic>{
      'events': instance.events,
    };
