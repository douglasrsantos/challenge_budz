import 'dart:convert';
import 'package:flutter/services.dart';

import 'package:challenge_budz/data/datasources/datasources.dart';
import 'package:challenge_budz/data/models/models.dart';

abstract class PetDataSource {
  ///Get pet
  Future<PetModel> getPet();
}

class PetDataSourceImpl implements PetDataSource {
  @override
  Future<PetModel> getPet() async {
    final jsonString = await rootBundle.loadString('budz_home.json');

    if (jsonString.isEmpty) {
      throw HttpError.notFound;
    }

    final jsonData = jsonDecode(jsonString);

    if (jsonData['pet'].isEmpty) {
      throw HttpError.notFound;
    }

    return PetModel.fromMap(jsonData['pet']);
  }
}
