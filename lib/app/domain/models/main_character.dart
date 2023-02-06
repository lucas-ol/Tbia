import 'main_character_guild.dart';
import 'main_houses.dart';

class MainCharacter {
  String accountStatus = "";

  int achievementPoints = 0;

  String comment = "";

  String deletionDate = "";

  List<String> formerNames = [];

  List<String> formerWorlds = [];

  MainCharacterGuild guild = MainCharacterGuild();

  List<MainHouses> houses = [];

  String lastLogin = "";

  int level = 0;

  String marriedTo = "";

  String name = "";

  String residence = "";

  String sex = "";

  String title = "";

  bool traded = false;

  int unlockedTitles = 0;

  String vocation = "";

  String world = "";

  MainCharacter();

  @override
  String toString() {
    return 'MainCharacter[accountStatus=$accountStatus, achievementPoints=$achievementPoints, comment=$comment, deletionDate=$deletionDate, formerNames=$formerNames, formerWorlds=$formerWorlds, guild=$guild, houses=$houses, lastLogin=$lastLogin, level=$level, marriedTo=$marriedTo, name=$name, residence=$residence, sex=$sex, title=$title, traded=$traded, unlockedTitles=$unlockedTitles, vocation=$vocation, world=$world, ]';
  }

  MainCharacter.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    accountStatus = json['account_status'];
    achievementPoints = json['achievement_points'];
    comment = json['comment'];
    deletionDate = json['deletion_date'];
    formerNames =
        (json['former_names'] as List).map((item) => item as String).toList();
    formerWorlds =
        (json['former_worlds'] as List).map((item) => item as String).toList();
    guild = MainCharacterGuild.fromJson(json['guild']);
    houses = MainHouses.listFromJson(json['houses']);
    lastLogin = json['last_login'];
    level = json['level'];
    marriedTo = json['married_to'];
    name = json['name'];
    residence = json['residence'];
    sex = json['sex'];
    title = json['title'];
    traded = json['traded'];
    unlockedTitles = json['unlocked_titles'];
    vocation = json['vocation'];
    world = json['world'];
  }

  Map<String, dynamic> toJson() {
    return {
      'account_status': accountStatus,
      'achievement_points': achievementPoints,
      'comment': comment,
      'deletion_date': deletionDate,
      'former_names': formerNames,
      'former_worlds': formerWorlds,
      'guild': guild,
      'houses': houses,
      'last_login': lastLogin,
      'level': level,
      'married_to': marriedTo,
      'name': name,
      'residence': residence,
      'sex': sex,
      'title': title,
      'traded': traded,
      'unlocked_titles': unlockedTitles,
      'vocation': vocation,
      'world': world
    };
  }

  static List<MainCharacter> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainCharacter>[]
        : json.map((value) => MainCharacter.fromJson(value)).toList();
  }

  static Map<String, MainCharacter> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainCharacter>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainCharacter.fromJson(value));
    }
    return map;
  }
}
