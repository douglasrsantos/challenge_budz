import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';

class BannerUseCase {
  final BannerRepository bannerRepository;

  BannerUseCase({required this.bannerRepository});

  Future<List<BannerEntity>?> getAllBanners() {
    return bannerRepository.getAllBanners();
  }
}
