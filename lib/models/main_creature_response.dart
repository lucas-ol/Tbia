import 'main_creature.dart';
import 'main_information.dart';

class MainCreatureResponse {
  MainCreature creature = MainCreature();

  MainInformation information = MainInformation();

  MainCreatureResponse();

  @override
  String toString() {
    return 'MainCreatureResponse[creature=$creature, information=$information, ]';
  }

  MainCreatureResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    creature = MainCreature.fromJson(json['creature']);
    information = MainInformation.fromJson(json['information']);
  }

  Map<String, dynamic> toJson() {
    return {'creature': creature, 'information': information};
  }

  static List<MainCreatureResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainCreatureResponse>[]
        : json.map((value) => MainCreatureResponse.fromJson(value)).toList();
  }

  static Map<String, MainCreatureResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainCreatureResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainCreatureResponse.fromJson(value));
    }
    return map;
  }
}
