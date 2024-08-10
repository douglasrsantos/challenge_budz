import 'dart:convert';

import 'package:challenge_budz/domain/entities/entities.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CategoryModel {
  String id;
  String name;
  String urlImage;

  CategoryModel({
    required this.id,
    required this.name,
    required this.urlImage,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'name': name,
      'imageUrlSquare': urlImage,
    };

    map.removeWhere((key, value) => value == null);

    return map;
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as String,
      name: map['name'] as String,
      urlImage: map['imageUrlSquare'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);

  CategoryEntity toEntity() => CategoryEntity(
        id: id,
        name: name,
        urlImage: urlImage,
      );
}
