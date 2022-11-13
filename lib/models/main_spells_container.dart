import 'main_spell_data.dart';

class MainSpellsContainer {
  MainSpellData spell = MainSpellData();

  MainSpellsContainer();

  @override
  String toString() {
    return 'MainSpellsContainer[spell=$spell, ]';
  }

  MainSpellsContainer.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    spell = MainSpellData.fromJson(json['spell']);
  }

  Map<String, dynamic> toJson() {
    return {'spell': spell};
  }

  static List<MainSpellsContainer> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainSpellsContainer>[]
        : json.map((value) => MainSpellsContainer.fromJson(value)).toList();
  }

  static Map<String, MainSpellsContainer> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainSpellsContainer>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainSpellsContainer.fromJson(value));
    }
    return map;
  }
}
