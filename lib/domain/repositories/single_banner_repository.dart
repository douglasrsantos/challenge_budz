import 'package:challenge_budz/domain/entities/entities.dart';

abstract class SingleBannerRepository {
  ///Get single banner
  Future<SingleBannerEntity?> getSingleBanner();
}
