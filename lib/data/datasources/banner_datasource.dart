import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/data/models/models.dart';

abstract class BannerDataSource {
  ///Get all banners
  Future<List<BannerModel>> getAllBanners();
}

class BannerDataSourceImpl implements BannerDataSource {
  @override
  Future<List<BannerModel>> getAllBanners() async {
    final jsonString = await rootBundle.loadString('budz_home.json');

    if (jsonString.isEmpty) {
      throw HttpError.notFound;
    }

    final jsonData = jsonDecode(jsonString);

    if (jsonData['banners'].isEmpty) {
      throw HttpError.notFound;
    }

    final banners = List.generate(jsonData['banners'].length,
        (index) => BannerModel.fromMap(jsonData['banners'][index]));

    return banners;
  }
}
