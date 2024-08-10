import 'package:flutter/material.dart';

import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/presentation/widgets/widgets.dart';

class CategoriesListView extends StatelessWidget {
  final List<CategoryEntity> categories;

  const CategoriesListView({
    super.key,
    required this.categories,
  });

  @override
  Widget build(BuildContext context) {
    return categories.isEmpty
        ? const Padding(
            padding: EdgeInsets.only(top: 16),
            child: NoDataWidget(
              title: 'Não foram encontradas categorias cadastrados',
              icon: Icons.article,
            ),
          )
        : SizedBox(
            height: 178,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final category = categories[index];

                return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 16 : 0,
                    right: index == categories.length - 1 ? 16 : 0,
                  ),
                  child: CategoryContent(category: category),
                );
              },
            ),
          );
  }
}
