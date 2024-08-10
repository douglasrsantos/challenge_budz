import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:challenge_budz/core/ui/ui.dart';

class BannerListIndicator extends StatelessWidget {
  final int indicatorIndex;
  final int bannersCount;

  const BannerListIndicator({
    super.key,
    required this.indicatorIndex,
    required this.bannersCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: AnimatedSmoothIndicator(
        activeIndex: indicatorIndex - 1,
        count: bannersCount - 1,
        effect: ExpandingDotsEffect(
          dotColor: AppColors.cardPetInfo,
          activeDotColor: Colors.cyan,
          dotHeight: 8,
          dotWidth: 8,
        ),
      ),
    );
  }
}
