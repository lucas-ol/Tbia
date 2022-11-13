import 'main_highscore.dart';
import 'main_highscore_page.dart';

class MainHighscores {
  String category = "";

  int highscoreAge = 0;

  List<MainHighscore> highscoreList = [];

  MainHighscorePage highscorePage = MainHighscorePage();

  String vocation = "";

  String world = "";

  MainHighscores();

  @override
  String toString() {
    return 'MainHighscores[category=$category, highscoreAge=$highscoreAge, highscoreList=$highscoreList, highscorePage=$highscorePage, vocation=$vocation, world=$world, ]';
  }

  MainHighscores.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    category = json['category'];
    highscoreAge = json['highscore_age'];
    highscoreList = MainHighscore.listFromJson(json['highscore_list']);
    highscorePage = MainHighscorePage.fromJson(json['highscore_page']);
    vocation = json['vocation'];
    world = json['world'];
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'highscore_age': highscoreAge,
      'highscore_list': highscoreList,
      'highscore_page': highscorePage,
      'vocation': vocation,
      'world': world
    };
  }

  static List<MainHighscores> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHighscores>[]
        : json.map((value) => MainHighscores.fromJson(value)).toList();
  }

  static Map<String, MainHighscores> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHighscores>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHighscores.fromJson(value));
    }
    return map;
  }
}
