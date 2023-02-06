import 'main_overview_world.dart';

class MainOverviewWorlds {
  /* Calculated value */
  int playersOnline = 0;

/* Overall Maximum: */
  String recordDate = "";

/* Overall Maximum: */
  int recordPlayers = 0;

  List<MainOverviewWorld> regularWorlds = [];

  List<MainOverviewWorld> tournamentWorlds = [];

  MainOverviewWorlds();

  @override
  String toString() {
    return 'MainOverviewWorlds[playersOnline=$playersOnline, recordDate=$recordDate, recordPlayers=$recordPlayers, regularWorlds=$regularWorlds, tournamentWorlds=$tournamentWorlds, ]';
  }

  MainOverviewWorlds.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    playersOnline = json['players_online'];
    recordDate = json['record_date'];
    recordPlayers = json['record_players'];
    regularWorlds = MainOverviewWorld.listFromJson(json['regular_worlds']);
    tournamentWorlds =
        MainOverviewWorld.listFromJson(json['tournament_worlds']);
  }

  Map<String, dynamic> toJson() {
    return {
      'players_online': playersOnline,
      'record_date': recordDate,
      'record_players': recordPlayers,
      'regular_worlds': regularWorlds,
      'tournament_worlds': tournamentWorlds
    };
  }

  static List<MainOverviewWorlds> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainOverviewWorlds>[]
        : json.map((value) => MainOverviewWorlds.fromJson(value)).toList();
  }

  static Map<String, MainOverviewWorlds> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainOverviewWorlds>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainOverviewWorlds.fromJson(value));
    }
    return map;
  }
}
