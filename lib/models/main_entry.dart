class MainEntry {
  int lastDayKilled = 0;

  int lastDayPlayersKilled = 0;

  int lastWeekKilled = 0;

  int lastWeekPlayersKilled = 0;

  String race = "";

  MainEntry();

  @override
  String toString() {
    return 'MainEntry[lastDayKilled=$lastDayKilled, lastDayPlayersKilled=$lastDayPlayersKilled, lastWeekKilled=$lastWeekKilled, lastWeekPlayersKilled=$lastWeekPlayersKilled, race=$race, ]';
  }

  MainEntry.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    lastDayKilled = json['last_day_killed'];
    lastDayPlayersKilled = json['last_day_players_killed'];
    lastWeekKilled = json['last_week_killed'];
    lastWeekPlayersKilled = json['last_week_players_killed'];
    race = json['race'];
  }

  Map<String, dynamic> toJson() {
    return {
      'last_day_killed': lastDayKilled,
      'last_day_players_killed': lastDayPlayersKilled,
      'last_week_killed': lastWeekKilled,
      'last_week_players_killed': lastWeekPlayersKilled,
      'race': race
    };
  }

  static List<MainEntry> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainEntry>[]
        : json.map((value) => MainEntry.fromJson(value)).toList();
  }

  static Map<String, MainEntry> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainEntry>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainEntry.fromJson(value));
    }
    return map;
  }
}
