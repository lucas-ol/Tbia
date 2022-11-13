import 'main_highscores.dart';
import 'main_information.dart';

class MainHighscoresResponse {
  MainHighscores highscores = MainHighscores();

  MainInformation information = MainInformation();

  MainHighscoresResponse();

  @override
  String toString() {
    return 'MainHighscoresResponse[highscores=$highscores, information=$information, ]';
  }

  MainHighscoresResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    highscores = MainHighscores.fromJson(json['highscores']);
    information = MainInformation.fromJson(json['information']);
  }

  Map<String, dynamic> toJson() {
    return {'highscores': highscores, 'information': information};
  }

  static List<MainHighscoresResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHighscoresResponse>[]
        : json.map((value) => MainHighscoresResponse.fromJson(value)).toList();
  }

  static Map<String, MainHighscoresResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHighscoresResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHighscoresResponse.fromJson(value));
    }
    return map;
  }
}
