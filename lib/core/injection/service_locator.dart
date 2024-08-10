import 'package:get_it/get_it.dart';

import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/data/repositories/repositories.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';
import 'package:challenge_budz/domain/usecases/usecases.dart';
import 'package:challenge_budz/presentation/controllers/controllers.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<ArticleRepository>(
    () => ArticleRepositoryImpl(articleDataSource: getIt<ArticleDataSource>()),
  );
  getIt.registerLazySingleton<ArticleDataSource>(() => ArticleDataSourceImpl());
  getIt.registerLazySingleton<ArticleUseCase>(
    () => ArticleUseCase(articleRepository: getIt<ArticleRepository>()),
  );
  getIt.registerLazySingleton<CategoryRepository>(
    () =>
        CategoryRepositoryImpl(categoryDataSource: getIt<CategoryDataSource>()),
  );
  getIt.registerLazySingleton<CategoryDataSource>(
      () => CategoryDataSourceImpl());
  getIt.registerLazySingleton<CategoryUseCase>(
    () => CategoryUseCase(categoryRepository: getIt<CategoryRepository>()),
  );
  getIt.registerLazySingleton<SingleBannerRepository>(
    () => SingleBannerRepositoryImpl(
        singleBannerDataSource: getIt<SingleBannerDataSource>()),
  );
  getIt.registerLazySingleton<SingleBannerDataSource>(
      () => SingleBannerDataSourceImpl());
  getIt.registerLazySingleton<SingleBannerUseCase>(
    () => SingleBannerUseCase(
        singleBannerRepository: getIt<SingleBannerRepository>()),
  );
  getIt.registerLazySingleton<BannerRepository>(
    () => BannerRepositoryImpl(bannerDataSource: getIt<BannerDataSource>()),
  );
  getIt.registerLazySingleton<BannerDataSource>(() => BannerDataSourceImpl());
  getIt.registerLazySingleton<BannerUseCase>(
    () => BannerUseCase(bannerRepository: getIt<BannerRepository>()),
  );
  getIt.registerLazySingleton<PetRepository>(
    () => PetRepositoryImpl(petDataSource: getIt<PetDataSource>()),
  );
  getIt.registerLazySingleton<PetDataSource>(() => PetDataSourceImpl());
  getIt.registerLazySingleton<PetUseCase>(
    () => PetUseCase(petRepository: getIt<PetRepository>()),
  );
  getIt.registerLazySingleton<HomeStore>(() => HomeStore(
        articleUseCase: getIt<ArticleUseCase>(),
        categoryUseCase: getIt<CategoryUseCase>(),
        singleBannerUseCase: getIt<SingleBannerUseCase>(),
        bannerUseCase: getIt<BannerUseCase>(),
        petUseCase: getIt<PetUseCase>(),
      ));
}
