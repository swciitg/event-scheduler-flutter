import 'package:json_annotation/json_annotation.dart';

part 'PaymentPageViewFeedback.g.dart';

@JsonSerializable()
class Payment{
  String? price;
  String? link;

  Payment({this.price, this.link});

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentToJson(this);
}

@JsonSerializable()
class FeedbackInput{
  String? rating;
  FeedbackInput({this.rating});

  factory FeedbackInput.fromJson(Map<String, dynamic> json) => _$FeedbackInputFromJson(json);
  Map<String, dynamic> toJson() => _$FeedbackInputToJson(this);
}
