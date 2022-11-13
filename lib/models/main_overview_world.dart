class MainOverviewWorld {
  /* BattlEye Status: null if since release / else show date? */
  String battleyeDate = "";

/* BattlEye Status: true if protected / false if \"Not protected by BattlEye.\" */
  bool battleyeProtected = false;

/* BattlEye Status: regular / experimental / tournament (if Tournament World Type exists) */
  String gameWorldType = "";

/* Location: */
  String location = "";

  String name = "";

/* Online: */
  int playersOnline = 0;

/* Additional Information: premium = true / else: false */
  bool premiumOnly = false;

/* PvP Type: */
  String pvpType = "";

/* Online: */
  String status = "";

/* BattlEye Status: null (default?) / regular / restricted */
  String tournamentWorldType = "";

/* Additional Information: regular (if not present) / locked / blocked */
  String transferType = "";

  MainOverviewWorld();

  @override
  String toString() {
    return 'MainOverviewWorld[battleyeDate=$battleyeDate, battleyeProtected=$battleyeProtected, gameWorldType=$gameWorldType, location=$location, name=$name, playersOnline=$playersOnline, premiumOnly=$premiumOnly, pvpType=$pvpType, status=$status, tournamentWorldType=$tournamentWorldType, transferType=$transferType, ]';
  }

  MainOverviewWorld.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    battleyeDate = json['battleye_date'];
    battleyeProtected = json['battleye_protected'];
    gameWorldType = json['game_world_type'];
    location = json['location'];
    name = json['name'];
    playersOnline = json['players_online'];
    premiumOnly = json['premium_only'];
    pvpType = json['pvp_type'];
    status = json['status'];
    tournamentWorldType = json['tournament_world_type'];
    transferType = json['transfer_type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'battleye_date': battleyeDate,
      'battleye_protected': battleyeProtected,
      'game_world_type': gameWorldType,
      'location': location,
      'name': name,
      'players_online': playersOnline,
      'premium_only': premiumOnly,
      'pvp_type': pvpType,
      'status': status,
      'tournament_world_type': tournamentWorldType,
      'transfer_type': transferType
    };
  }

  static List<MainOverviewWorld> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainOverviewWorld>[]
        : json.map((value) => MainOverviewWorld.fromJson(value)).toList();
  }

  static Map<String, MainOverviewWorld> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainOverviewWorld>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainOverviewWorld.fromJson(value));
    }
    return map;
  }
}
