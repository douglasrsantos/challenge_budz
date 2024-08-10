// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/presentation/widgets/widgets.dart';

class ArticlesListView extends StatelessWidget {
  final List<ArticleEntity> articles;

  const ArticlesListView({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return articles.isEmpty
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const NoDataWidget(
              title: 'Não foram encontrados artigos cadastrados',
              icon: Icons.article,
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: articles.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) {
                final article = articles[index];

                return ArticleContent(
                  article: article,
                  onTapArticle: () {},
                );
              },
            ),
          );
  }
}
