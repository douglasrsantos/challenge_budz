import 'package:mobx/mobx.dart';

import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/domain/usecases/usecases.dart';

part 'home_store.g.dart';

// ignore: library_private_types_in_public_api
class HomeStore = HomeStoreBase with _$HomeStore;

abstract class HomeStoreBase with Store {
  final ArticleUseCase articleUseCase;
  final CategoryUseCase categoryUseCase;
  final SingleBannerUseCase singleBannerUseCase;
  final BannerUseCase bannerUseCase;
  final PetUseCase petUseCase;

  HomeStoreBase({
    required this.articleUseCase,
    required this.categoryUseCase,
    required this.singleBannerUseCase,
    required this.bannerUseCase,
    required this.petUseCase,
  });

  @observable
  String? infoErrorMessage;

  @computed
  bool get hasError => infoErrorMessage != null;

  @observable
  String? infoSuccessMessage;

  @computed
  bool get hasSuccess => infoSuccessMessage != null;

  @observable
  bool isLoading = false;

  @observable
  List<ArticleEntity>? articles;

  @observable
  List<CategoryEntity>? categories;

  @observable
  List<BannerEntity>? banners;

  @observable
  SingleBannerEntity? singleBanner;

  @observable
  PetEntity? pet;

  @observable
  int bannerIndicatorIndex = 1;

  void init() async {
    isLoading = true;
    await Future.wait([
      getArticles(),
      getCategories(),
      getSingleBanner(),
      getBanners(),
      getPet(),
    ]);
    isLoading = false;
  }

  @action
  Future<void> getArticles() async {
    try {
      final result = await articleUseCase.getAllArticles();

      articles = result;
    } catch (e) {
      infoErrorMessage = e.toString();
    }
  }

  @action
  Future<void> getCategories() async {
    try {
      final result = await categoryUseCase.getAllCategories();

      categories = result;
    } catch (e) {
      infoErrorMessage = e.toString();
    }
  }

  @action
  Future<void> getBanners() async {
    try {
      final result = await bannerUseCase.getAllBanners();

      banners = result;
    } catch (e) {
      infoErrorMessage = e.toString();
    }
  }

  @action
  Future<void> getSingleBanner() async {
    try {
      final result = await singleBannerUseCase.getSingleBanner();

      singleBanner = result;
    } catch (e) {
      infoErrorMessage = e.toString();
    }
  }

  @action
  Future<void> getPet() async {
    try {
      final result = await petUseCase.getPet();

      pet = result;

      if (pet == null) {
        throw 'Erro ao obter dados do pet';
      }
    } catch (e) {
      infoErrorMessage = e.toString();
    }
  }
}
