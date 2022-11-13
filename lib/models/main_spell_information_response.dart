import 'main_information.dart';
import 'main_spells_container.dart';

class MainSpellInformationResponse {
  MainInformation information = MainInformation();

  MainSpellsContainer spells = MainSpellsContainer();

  MainSpellInformationResponse();

  @override
  String toString() {
    return 'MainSpellInformationResponse[information=$information, spells=$spells, ]';
  }

  MainSpellInformationResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    information = MainInformation.fromJson(json['information']);
    spells = MainSpellsContainer.fromJson(json['spells']);
  }

  Map<String, dynamic> toJson() {
    return {'information': information, 'spells': spells};
  }

  static List<MainSpellInformationResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainSpellInformationResponse>[]
        : json
            .map((value) => MainSpellInformationResponse.fromJson(value))
            .toList();
  }

  static Map<String, MainSpellInformationResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainSpellInformationResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainSpellInformationResponse.fromJson(value));
    }
    return map;
  }
}
