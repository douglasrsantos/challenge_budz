import 'dart:convert';

import 'package:challenge_budz/domain/entities/single_banner_entity.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class SingleBannerModel {
  String id;
  String audience;
  bool status;
  String partner;
  String link;
  String imageUrl;
  String targetSpecie;

  SingleBannerModel({
    required this.id,
    required this.audience,
    required this.status,
    required this.partner,
    required this.link,
    required this.imageUrl,
    required this.targetSpecie,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'audience': audience,
      'status': status,
      'partner': partner,
      'link': link,
      'imageURL': imageUrl,
      'targetSpecie': targetSpecie,
    };

    map.removeWhere((key, value) => value == null);

    return map;
  }

  factory SingleBannerModel.fromMap(Map<String, dynamic> map) {
    return SingleBannerModel(
      id: map['id'] as String,
      audience: map['audience'] as String,
      status: map['status'] as bool,
      partner: map['partner'] as String,
      link: map['link'] as String,
      imageUrl: map['imageURL'] as String,
      targetSpecie: map['targetSpecie'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SingleBannerModel.fromJson(String source) =>
      SingleBannerModel.fromMap(json.decode(source) as Map<String, dynamic>);

  SingleBannerEntity toEntity() => SingleBannerEntity(
        id: id,
        audience: audience,
        status: status,
        partner: partner,
        link: link,
        imageUrl: imageUrl,
        targetSpecie: targetSpecie,
      );
}
