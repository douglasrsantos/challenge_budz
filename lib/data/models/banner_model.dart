import 'dart:convert';

import 'package:challenge_budz/domain/entities/banner_entity.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BannerModel {
  String id;
  String audience;
  bool status;
  String partner;
  int priority;
  String link;
  String? targetSpecie;
  String imageUrl;

  BannerModel({
    required this.id,
    required this.audience,
    required this.status,
    required this.partner,
    required this.priority,
    required this.link,
    required this.targetSpecie,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'audience': audience,
      'status': status,
      'partner': partner,
      'priority': priority,
      'link': link,
      'targetSpecie': targetSpecie,
      'imageURL': imageUrl,
    };

    map.removeWhere((key, value) => value == null);

    return map;
  }

  factory BannerModel.fromMap(Map<String, dynamic> map) {
    return BannerModel(
      id: map['id'] as String,
      audience: map['audience'] as String,
      status: map['status'] as bool,
      partner: map['partner'] as String,
      priority: map['priority'] as int,
      link: map['link'] as String,
      targetSpecie:
          map['targetSpecie'] != null ? map['targetSpecie'] as String : null,
      imageUrl: map['imageURL'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BannerModel.fromJson(String source) =>
      BannerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  BannerEntity toEntity() => BannerEntity(
        id: id,
        audience: audience,
        status: status,
        partner: partner,
        priority: priority,
        link: link,
        targetSpecie: targetSpecie,
        imageUrl: imageUrl,
      );
}
