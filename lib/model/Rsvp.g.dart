// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Rsvp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rsvp _$RsvpFromJson(Map<String, dynamic> json) => Rsvp(
      rsvp: (json['rsvp'] as List<dynamic>?)
          ?.map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RsvpToJson(Rsvp instance) => <String, dynamic>{
      'rsvp': instance.rsvp,
    };
