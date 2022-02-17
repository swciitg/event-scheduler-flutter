// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PaymentPageViewFeedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payment _$PaymentFromJson(Map<String, dynamic> json) => Payment(
      price: json['price'] as String?,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$PaymentToJson(Payment instance) => <String, dynamic>{
      'price': instance.price,
      'link': instance.link,
    };

FeedbackInput _$FeedbackInputFromJson(Map<String, dynamic> json) =>
    FeedbackInput(
      rating: json['rating'] as String?,
    );

Map<String, dynamic> _$FeedbackInputToJson(FeedbackInput instance) =>
    <String, dynamic>{
      'rating': instance.rating,
    };
