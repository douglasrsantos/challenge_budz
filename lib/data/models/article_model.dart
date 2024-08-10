import 'dart:convert';

import 'package:challenge_budz/domain/entities/entities.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ArticleModel {
  String id;
  String categoryName;
  String colorCode;
  String title;
  String imageUrlSquare;

  ArticleModel({
    required this.id,
    required this.categoryName,
    required this.colorCode,
    required this.title,
    required this.imageUrlSquare,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'categoryName': categoryName,
      'colorCode': colorCode,
      'title': title,
      'imageUrlSquare': imageUrlSquare,
    };

    map.removeWhere((key, value) => value == null);

    return map;
  }

  factory ArticleModel.fromMap(Map<String, dynamic> map) {
    return ArticleModel(
      id: map['id'] as String,
      categoryName: map['categoryName'] as String,
      colorCode: map['colorCode'] as String,
      title: map['title'] as String,
      imageUrlSquare: map['imageUrlSquare'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ArticleModel.fromJson(String source) =>
      ArticleModel.fromMap(json.decode(source) as Map<String, dynamic>);

  ArticleEntity toEntity() => ArticleEntity(
        id: id,
        categoryName: categoryName,
        colorCode: colorCode,
        title: title,
        imageUrlSquare: imageUrlSquare,
      );
}
