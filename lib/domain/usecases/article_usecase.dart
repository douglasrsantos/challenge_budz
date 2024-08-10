import 'package:challenge_budz/domain/entities/entities.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';

class ArticleUseCase {
  final ArticleRepository articleRepository;

  ArticleUseCase({required this.articleRepository});

  Future<List<ArticleEntity>?> getAllArticles() {
    return articleRepository.getAllArticles();
  }
}
