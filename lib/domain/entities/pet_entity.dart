// ignore_for_file: public_member_api_docs, sort_constructors_first
class PetEntity {
  String id;
  String gender;
  String breed;
  String name;
  String photoUrl;
  bool mainPet;
  String specie;

  PetEntity({
    required this.id,
    required this.gender,
    required this.breed,
    required this.name,
    required this.photoUrl,
    required this.mainPet,
    required this.specie,
  });
}
