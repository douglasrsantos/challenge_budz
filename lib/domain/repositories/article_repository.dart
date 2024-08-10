import 'package:challenge_budz/domain/entities/entities.dart';

abstract class ArticleRepository {
  ///Get all articles
  Future<List<ArticleEntity>?> getAllArticles();
}
