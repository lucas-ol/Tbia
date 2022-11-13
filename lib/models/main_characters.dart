import 'main_account_badges.dart';
import 'main_account_information.dart';
import 'main_achievements.dart';
import 'main_character.dart';
import 'main_deaths.dart';
import 'main_other_characters.dart';

class MainCharacters {
  List<MainAccountBadges> accountBadges = [];

  MainAccountInformation accountInformation = MainAccountInformation();

  List<MainAchievements> achievements = [];

  MainCharacter character = MainCharacter();

  List<MainDeaths> deaths = [];

  List<MainOtherCharacters> otherCharacters = [];

  MainCharacters();

  @override
  String toString() {
    return 'MainCharacters[accountBadges=$accountBadges, accountInformation=$accountInformation, achievements=$achievements, character=$character, deaths=$deaths, otherCharacters=$otherCharacters, ]';
  }

  MainCharacters.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    accountBadges = MainAccountBadges.listFromJson(json['account_badges']);
    accountInformation =
        MainAccountInformation.fromJson(json['account_information']);
    achievements = MainAchievements.listFromJson(json['achievements']);
    character = MainCharacter.fromJson(json['character']);
    deaths = MainDeaths.listFromJson(json['deaths']);
    otherCharacters =
        MainOtherCharacters.listFromJson(json['other_characters']);
  }

  Map<String, dynamic> toJson() {
    return {
      'account_badges': accountBadges,
      'account_information': accountInformation,
      'achievements': achievements,
      'character': character,
      'deaths': deaths,
      'other_characters': otherCharacters
    };
  }

  static List<MainCharacters> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainCharacters>[]
        : json.map((value) => MainCharacters.fromJson(value)).toList();
  }

  static Map<String, MainCharacters> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    Map<String, MainCharacters> map = {};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainCharacters.fromJson(value));
    }
    return map;
  }
}
