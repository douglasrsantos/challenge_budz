import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';

class SingleBannerRepositoryImpl implements SingleBannerRepository {
  final SingleBannerDataSource singleBannerDataSource;

  SingleBannerRepositoryImpl({required this.singleBannerDataSource});

  @override
  Future<SingleBannerEntity?> getSingleBanner() async {
    try {
      final singleBanner = await singleBannerDataSource.getSingleBanner();

      return singleBanner.toEntity();
    } on HttpError catch (e) {
      if (e == HttpError.notFound) {
        throw 'Nenhuma categoria encontrada';
      }
    }
    return null;
  }
}
