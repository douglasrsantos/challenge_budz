import 'package:challenge_budz/domain/entities/entities.dart';

abstract class CategoryRepository {
  ///Get all categories
  Future<List<CategoryEntity>?> getAllCategories();
}
