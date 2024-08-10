import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/domain/entities/banner_entity.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';

class BannerRepositoryImpl implements BannerRepository {
  final BannerDataSource bannerDataSource;

  BannerRepositoryImpl({required this.bannerDataSource});

  @override
  Future<List<BannerEntity>?> getAllBanners() async {
    try {
      final banners = await bannerDataSource.getAllBanners();

      final bannerEntities = List.generate(
        banners.length,
        (index) => banners[index].toEntity(),
      );

      return bannerEntities;
    } on HttpError catch (e) {
      if (e == HttpError.notFound) {
        throw 'Nenhum banner encontrado';
      }
    }
    return null;
  }
}
