import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';

class SingleBannerUseCase {
  final SingleBannerRepository singleBannerRepository;

  SingleBannerUseCase({required this.singleBannerRepository});

  Future<SingleBannerEntity?> getSingleBanner() {
    return singleBannerRepository.getSingleBanner();
  }
}
