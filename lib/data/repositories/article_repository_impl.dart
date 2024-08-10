import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/domain/entities/article_entity.dart';
import 'package:challenge_budz/domain/repositories/repositories.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleDataSource articleDataSource;

  ArticleRepositoryImpl({required this.articleDataSource});

  @override
  Future<List<ArticleEntity>?> getAllArticles() async {
    try {
      final articles = await articleDataSource.getAllArticles();

      final articleEntities = List.generate(
        articles.length,
        (index) => articles[index].toEntity(),
      );

      return articleEntities;
    } on HttpError catch (e) {
      if (e == HttpError.notFound) {
        throw 'Nenhum artigo encontrado';
      }
    }
    return null;
  }
}
