import 'package:flutter/material.dart';

import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/presentation/widgets/widgets.dart';

class BannersListView extends StatelessWidget {
  final List<BannerEntity> banners;
  final Function(int index) setIndicatorIndex;

  const BannersListView({
    super.key,
    required this.banners,
    required this.setIndicatorIndex,
  });

  @override
  Widget build(BuildContext context) {
    return banners.isEmpty
        ? const Padding(
            padding: EdgeInsets.only(top: 16),
            child: NoDataWidget(
              title: 'Não foram encontrados banners para exibição',
              icon: Icons.article,
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 32),
            child: SizedBox(
              height: 136,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: banners.length,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final banner = banners[index];
                  setIndicatorIndex(index);

                  return Padding(
                    padding: EdgeInsets.only(
                      left: index == 0 ? 16 : 0,
                      right: index == banners.length - 1 ? 16 : 0,
                    ),
                    child: BannerContent(
                      banner: banner,
                    ),
                  );
                },
              ),
            ),
          );
  }
}
