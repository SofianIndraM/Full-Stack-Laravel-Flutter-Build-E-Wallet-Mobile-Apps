import 'package:flutter/foundation.dart';

class PaymentMethodModel {
  final int? id;
  final String? name;
  final String? code;
  final String? thumbnail;

  PaymentMethodModel({
    this.id,
    this.code,
    this.name,
    this.thumbnail,
  });

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) =>
      PaymentMethodModel(
        id: json['id'],
        name: json['name'],
        code: json['code'],
        thumbnail: json['thumbnail'],
      );
}
