import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';

class CategoryUseCase {
  final CategoryRepository categoryRepository;

  CategoryUseCase({required this.categoryRepository});

  Future<List<CategoryEntity>?> getAllCategories() {
    return categoryRepository.getAllCategories();
  }
}
