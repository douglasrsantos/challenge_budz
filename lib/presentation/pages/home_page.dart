import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'package:challenge_budz/core/ui/ui.dart';
import 'package:challenge_budz/presentation/controllers/controllers.dart';
import 'package:challenge_budz/presentation/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  final HomeStore controller;

  const HomePage({
    super.key,
    required this.controller,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeStore get controller => widget.controller;

  @override
  void initState() {
    super.initState();
    reaction((_) => controller.infoErrorMessage, (_) {
      if (controller.hasError) {
        Messages.of(context).showError(controller.infoErrorMessage!);
      }
    });

    reaction((_) => controller.infoSuccessMessage, (_) {
      if (controller.hasSuccess) {
        Messages.of(context).showSuccess(controller.infoSuccessMessage!);
      }
    });

    controller.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: SafeArea(
        child: Observer(builder: (_) {
          if (controller.isLoading) {
            return Loading.setLoading();
          }

          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  PetHeader(pet: controller.pet!),
                  const PetInfo(),
                  BannersListView(
                    banners: controller.banners ?? [],
                    setIndicatorIndex: (index) =>
                        controller.bannerIndicatorIndex = index,
                  ),
                  BannerListIndicator(
                    indicatorIndex: controller.bannerIndicatorIndex,
                    bannersCount: controller.banners?.length ?? 0,
                  ),
                  SessionTitle(
                    title: 'Explorar Jornadas',
                    subtitle: 'Descubra novas trilhas',
                    onPressedSeeAll: () {},
                  ),
                  CategoriesListView(
                    categories: controller.categories ?? [],
                  ),
                  SingleBanner(
                    singleBannerUrl: controller.singleBanner?.imageUrl ?? '',
                  ),
                  SessionTitle(
                    title: 'Artigos',
                    subtitle: 'Conteúdos e dicas extras',
                    onPressedSeeAll: () {},
                  ),
                  ArticlesListView(
                    articles: controller.articles ?? [],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
