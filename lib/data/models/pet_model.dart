import 'dart:convert';

import 'package:challenge_budz/domain/entities/pet_entity.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class PetModel {
  String id;
  String gender;
  String breed;
  String name;
  String photoUrl;
  bool mainPet;
  String specie;

  PetModel({
    required this.id,
    required this.gender,
    required this.breed,
    required this.name,
    required this.photoUrl,
    required this.mainPet,
    required this.specie,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': id,
      'gender': gender,
      'breed': breed,
      'name': name,
      'photoUrl': photoUrl,
      'mainPet': mainPet,
      'specie': specie,
    };

    map.removeWhere((key, value) => value == null);

    return map;
  }

  factory PetModel.fromMap(Map<String, dynamic> map) {
    return PetModel(
      id: map['id'] as String,
      gender: map['gender'] as String,
      breed: map['breed'] as String,
      name: map['name'] as String,
      photoUrl: map['photoUrl'] as String,
      mainPet: map['mainPet'] as bool,
      specie: map['specie'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PetModel.fromJson(String source) =>
      PetModel.fromMap(json.decode(source) as Map<String, dynamic>);

  PetEntity toEntity() => PetEntity(
        id: id,
        gender: gender,
        breed: breed,
        name: name,
        photoUrl: photoUrl,
        mainPet: mainPet,
        specie: specie,
      );
}
