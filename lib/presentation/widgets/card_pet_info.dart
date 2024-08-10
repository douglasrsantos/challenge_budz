import 'package:flutter/material.dart';

import 'package:challenge_budz/core/ui/ui.dart';

class CardPetInfo extends StatelessWidget {
  final String title;
  final String infoText;

  const CardPetInfo({
    super.key,
    required this.title,
    required this.infoText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Container(
        width: MediaQuery.of(context).size.width / 3 - 18,
        padding: const EdgeInsets.all(12),
        height: 66,
        decoration: BoxDecoration(
          color: AppColors.cardPetInfo,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppFonts.smallTitle,
            ),
            Expanded(
              child: Text(
                infoText,
                style: AppFonts.mediumTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
