import 'main_characters.dart';
import 'main_information.dart';

class MainCharacterResponse {
  MainCharacters characters = MainCharacters();

  MainInformation information = MainInformation();

  MainCharacterResponse();

  @override
  String toString() {
    return 'MainCharacterResponse[characters=$characters, information=$information, ]';
  }

  MainCharacterResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    characters = MainCharacters.fromJson(json['characters']);
    information = MainInformation.fromJson(json['information']);
  }

  Map<String, dynamic> toJson() {
    return {'characters': characters, 'information': information};
  }

  static List<MainCharacterResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainCharacterResponse>[]
        : json.map((value) => MainCharacterResponse.fromJson(value)).toList();
  }

  static Map<String, MainCharacterResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainCharacterResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainCharacterResponse.fromJson(value));
    }
    return map;
  }
}
