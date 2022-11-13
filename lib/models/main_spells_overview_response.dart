import 'main_information.dart';
import 'main_spells.dart';

class MainSpellsOverviewResponse {
  MainInformation information = MainInformation();

  MainSpells spells = MainSpells();

  MainSpellsOverviewResponse();

  @override
  String toString() {
    return 'MainSpellsOverviewResponse[information=$information, spells=$spells, ]';
  }

  MainSpellsOverviewResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    information = MainInformation.fromJson(json['information']);
    spells = MainSpells.fromJson(json['spells']);
  }

  Map<String, dynamic> toJson() {
    return {'information': information, 'spells': spells};
  }

  static List<MainSpellsOverviewResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainSpellsOverviewResponse>[]
        : json
            .map((value) => MainSpellsOverviewResponse.fromJson(value))
            .toList();
  }

  static Map<String, MainSpellsOverviewResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainSpellsOverviewResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainSpellsOverviewResponse.fromJson(value));
    }
    return map;
  }
}
