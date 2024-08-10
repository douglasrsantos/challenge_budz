import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:challenge_budz/core/ui/ui.dart';
import 'package:challenge_budz/domain/entities/entities.dart';

class CategoryContent extends StatelessWidget {
  final CategoryEntity category;

  const CategoryContent({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 144,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: category.urlImage,
              memCacheHeight: 396,
              memCacheWidth: 396,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: Text(
            category.name,
            style: AppFonts.mediumTitle,
          ),
        ),
      ],
    );
  }
}
