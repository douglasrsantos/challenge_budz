import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/data/models/models.dart';

abstract class CategoryDataSource {
  ///Get all categories
  Future<List<CategoryModel>> getAllCategories();
}

class CategoryDataSourceImpl implements CategoryDataSource {
  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final jsonString = await rootBundle.loadString('budz_home.json');

    if (jsonString.isEmpty) {
      throw HttpError.notFound;
    }

    final jsonData = jsonDecode(jsonString);

    if (jsonData['categories'].isEmpty) {
      throw HttpError.notFound;
    }

    final categories = List.generate(jsonData['categories'].length,
        (index) => CategoryModel.fromMap(jsonData['categories'][index]));

    return categories;
  }
}
