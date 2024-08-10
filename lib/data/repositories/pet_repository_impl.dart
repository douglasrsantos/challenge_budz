import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';

class PetRepositoryImpl implements PetRepository {
  final PetDataSource petDataSource;

  PetRepositoryImpl({required this.petDataSource});

  @override
  Future<PetEntity?> getPet() async {
    try {
      final pet = await petDataSource.getPet();

      return pet.toEntity();
    } on HttpError catch (e) {
      if (e == HttpError.notFound) {
        throw 'Informações do pet não encontradas';
      }
    }
    return null;
  }
}
