import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/data/models/models.dart';

abstract class SingleBannerDataSource {
  ///Get all categories
  Future<SingleBannerModel> getSingleBanner();
}

class SingleBannerDataSourceImpl implements SingleBannerDataSource {
  @override
  Future<SingleBannerModel> getSingleBanner() async {
    final jsonString = await rootBundle.loadString('budz_home.json');

    if (jsonString.isEmpty) {
      throw HttpError.notFound;
    }

    final jsonData = jsonDecode(jsonString);

    if (jsonData['singleBanner'].isEmpty) {
      throw HttpError.notFound;
    }

    return SingleBannerModel.fromMap(jsonData['singleBanner']);
  }
}
