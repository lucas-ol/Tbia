import 'main_guild.dart';

class MainGuilds {
  MainGuild guild = MainGuild();

  MainGuilds();

  @override
  String toString() {
    return 'MainGuilds[guild=$guild, ]';
  }

  MainGuilds.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    guild = MainGuild.fromJson(json['guild']);
  }

  Map<String, dynamic> toJson() {
    return {'guild': guild};
  }

  static List<MainGuilds> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainGuilds>[]
        : json.map((value) => MainGuilds.fromJson(value)).toList();
  }

  static Map<String, MainGuilds> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainGuilds>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainGuilds.fromJson(value));
    }
    return map;
  }
}
