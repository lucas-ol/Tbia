import 'main_online_players.dart';

class MainWorld {
  /* BattlEye Status: null if since release / else show date? */
  String battleyeDate = "";

/* BattlEye Status: true if protected / false if \"Not protected by BattlEye.\" */
  bool battleyeProtected = false;

/* Creation Date: -> convert to YYYY-MM */
  String creationDate = "";

/* Game World Type: regular / experimental / tournament (if Tournament World Type exists) */
  String gameWorldType = "";

/* Location: */
  String location = "";

  String name = "";

  List<MainOnlinePlayers> onlinePlayers = [];

/* Players Online: */
  int playersOnline = 0;

/* Premium Type: premium = true / else: false */
  bool premiumOnly = false;

/* PvP Type: */
  String pvpType = "";

/* Online Record: */
  String recordDate = "";

/* Online Record: */
  int recordPlayers = 0;

/* Status: */
  String status = "";

/* Tournament World Type: \"\" (default?) / regular / restricted */
  String tournamentWorldType = "";

/* Transfer Type: regular (if not present) / locked / blocked */
  String transferType = "";

/* World Quest Titles: */
  List<String> worldQuestTitles = [];

  MainWorld();

  @override
  String toString() {
    return 'MainWorld[battleyeDate=$battleyeDate, battleyeProtected=$battleyeProtected, creationDate=$creationDate, gameWorldType=$gameWorldType, location=$location, name=$name, onlinePlayers=$onlinePlayers, playersOnline=$playersOnline, premiumOnly=$premiumOnly, pvpType=$pvpType, recordDate=$recordDate, recordPlayers=$recordPlayers, status=$status, tournamentWorldType=$tournamentWorldType, transferType=$transferType, worldQuestTitles=$worldQuestTitles, ]';
  }

  MainWorld.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    battleyeDate = json['battleye_date'];
    battleyeProtected = json['battleye_protected'];
    creationDate = json['creation_date'];
    gameWorldType = json['game_world_type'];
    location = json['location'];
    name = json['name'];
    onlinePlayers = MainOnlinePlayers.listFromJson(json['online_players']);
    playersOnline = json['players_online'];
    premiumOnly = json['premium_only'];
    pvpType = json['pvp_type'];
    recordDate = json['record_date'];
    recordPlayers = json['record_players'];
    status = json['status'];
    tournamentWorldType = json['tournament_world_type'];
    transferType = json['transfer_type'];
    worldQuestTitles = (json['world_quest_titles'] as List)
        .map((item) => item as String)
        .toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'battleye_date': battleyeDate,
      'battleye_protected': battleyeProtected,
      'creation_date': creationDate,
      'game_world_type': gameWorldType,
      'location': location,
      'name': name,
      'online_players': onlinePlayers,
      'players_online': playersOnline,
      'premium_only': premiumOnly,
      'pvp_type': pvpType,
      'record_date': recordDate,
      'record_players': recordPlayers,
      'status': status,
      'tournament_world_type': tournamentWorldType,
      'transfer_type': transferType,
      'world_quest_titles': worldQuestTitles
    };
  }

  static List<MainWorld> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainWorld>[]
        : json.map((value) => MainWorld.fromJson(value)).toList();
  }

  static Map<String, MainWorld> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainWorld>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainWorld.fromJson(value));
    }
    return map;
  }
}
