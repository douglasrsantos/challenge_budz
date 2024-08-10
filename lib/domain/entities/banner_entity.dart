// ignore_for_file: public_member_api_docs, sort_constructors_first
class BannerEntity {
  String id;
  String audience;
  bool status;
  String partner;
  int priority;
  String link;
  String? targetSpecie;
  String imageUrl;

  BannerEntity({
    required this.id,
    required this.audience,
    required this.status,
    required this.partner,
    required this.priority,
    required this.link,
    required this.targetSpecie,
    required this.imageUrl,
  });
}
