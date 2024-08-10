import 'package:challenge_budz/domain/entities/entities.dart';

abstract class BannerRepository {
  ///Get all banners
  Future<List<BannerEntity>?> getAllBanners();
}
