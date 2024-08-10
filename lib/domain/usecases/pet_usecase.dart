import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';

class PetUseCase {
  final PetRepository petRepository;

  PetUseCase({required this.petRepository});

  Future<PetEntity?> getPet() {
    return petRepository.getPet();
  }
}
