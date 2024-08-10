import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/domain/entities/category_entity.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryDataSource categoryDataSource;

  CategoryRepositoryImpl({required this.categoryDataSource});

  @override
  Future<List<CategoryEntity>?> getAllCategories() async {
    try {
      final categories = await categoryDataSource.getAllCategories();

      final categoryEntities = List.generate(
        categories.length,
        (index) => categories[index].toEntity(),
      );

      return categoryEntities;
    } on HttpError catch (e) {
      if (e == HttpError.notFound) {
        throw 'Nenhuma categoria encontrada';
      }
    }
    return null;
  }
}
