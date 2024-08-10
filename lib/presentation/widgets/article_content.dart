import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:challenge_budz/core/ui/ui.dart';
import 'package:challenge_budz/domain/entities/entities.dart';

class ArticleContent extends StatelessWidget {
  final ArticleEntity article;
  final Function()? onTapArticle;

  const ArticleContent({
    super.key,
    required this.article,
    required this.onTapArticle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapArticle,
      child: Row(
        children: [
          SizedBox(
            height: 120,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: article.imageUrlSquare,
                memCacheHeight: 330,
                memCacheWidth: 330,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Color(0xFF000000 +
                      int.parse(article.colorCode.substring(1, 7), radix: 16)),
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Text(
                      article.categoryName,
                      style: AppFonts.articleTitle,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  article.title,
                  style: AppFonts.mediumTitle,
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.cyan.shade50,
            ),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.blueTexts,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
