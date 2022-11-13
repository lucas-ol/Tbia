import 'main_overview_guild.dart';

class MainOverviewGuilds {
  List<MainOverviewGuild> active = [];

  List<MainOverviewGuild> formation = [];

  String world = "";

  MainOverviewGuilds();

  @override
  String toString() {
    return 'MainOverviewGuilds[active=$active, formation=$formation, world=$world, ]';
  }

  MainOverviewGuilds.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    active = MainOverviewGuild.listFromJson(json['active']);
    formation = MainOverviewGuild.listFromJson(json['formation']);
    world = json['world'];
  }

  Map<String, dynamic> toJson() {
    return {'active': active, 'formation': formation, 'world': world};
  }

  static List<MainOverviewGuilds> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainOverviewGuilds>[]
        : json.map((value) => MainOverviewGuilds.fromJson(value)).toList();
  }

  static Map<String, MainOverviewGuilds> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainOverviewGuilds>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainOverviewGuilds.fromJson(value));
    }
    return map;
  }
}
