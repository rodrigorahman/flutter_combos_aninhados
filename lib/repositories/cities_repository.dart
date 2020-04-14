import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_combos_aninhados/models/city_model.dart';

class CitiesRepository {
  
  Future<List<CityModel>> getCitiesByState(String state) async {
    var jsonFile = await rootBundle.loadString('assets/cidades.json');
    List<dynamic> cities = json.decode(jsonFile) as List;
    return cities
      .map((c) => CityModel.fromMap(c))
      .where((c) => c.state == state)
      .toList();
  }
}