import 'dart:convert';

class CityModel {
  int id;
  String name;
  String state;

  CityModel({
    this.id,
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'state': state,
    };
  }

  static CityModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return CityModel(
      id: map['id'],
      name: map['nome'],
      state: map['municipio']['microrregiao']['mesorregiao']['UF']['sigla'],
    );
  }

  String toJson() => json.encode(toMap());

  static CityModel fromJson(String source) => fromMap(json.decode(source));
}
