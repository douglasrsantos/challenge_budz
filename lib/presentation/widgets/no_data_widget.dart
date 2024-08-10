import 'package:flutter/material.dart';

import 'package:challenge_budz/core/ui/ui.dart';

class NoDataWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final IconData icon;

  const NoDataWidget({
    super.key,
    required this.title,
    required this.icon,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.highlightedTexts,
          ),
          child: Icon(
            icon,
            size: 70,
            color: Colors.white,
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          subtitle ?? '',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: AppColors.highlightedTexts),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
