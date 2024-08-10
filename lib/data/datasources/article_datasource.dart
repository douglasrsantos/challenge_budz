import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/data/models/models.dart';

abstract class ArticleDataSource {
  ///Get all articles
  Future<List<ArticleModel>> getAllArticles();
}

class ArticleDataSourceImpl implements ArticleDataSource {
  @override
  Future<List<ArticleModel>> getAllArticles() async {
    final jsonString = await rootBundle.loadString('budz_home.json');

    if (jsonString.isEmpty) {
      throw HttpError.notFound;
    }

    final jsonData = jsonDecode(jsonString);

    if(jsonData['articles'].isEmpty){
      throw HttpError.notFound;
    }

    final articles = List.generate(
        jsonData['articles'].length, (index) => ArticleModel.fromMap(jsonData['articles'][index]));

    return articles;
  }
}
