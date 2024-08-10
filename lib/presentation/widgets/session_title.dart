import 'package:challenge_budz/core/ui/ui.dart';
import 'package:flutter/material.dart';

class SessionTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function()? onPressedSeeAll;

  const SessionTitle({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onPressedSeeAll,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: AppFonts.largeTitle,
              ),
              Text(
                subtitle,
                style: AppFonts.subtitle,
              ),
            ],
          ),
          TextButton(
            onPressed: onPressedSeeAll,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Ver tudo',
                  style: AppFonts.articleTitle
                      .copyWith(color: AppColors.blueTexts),
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 12,
                  color: AppColors.blueTexts,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
