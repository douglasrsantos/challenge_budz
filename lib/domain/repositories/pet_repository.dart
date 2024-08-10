import 'package:challenge_budz/domain/entities/entities.dart';

abstract class PetRepository {
  ///Get pet
  Future<PetEntity?> getPet();
}
