class MainTotal {
  int lastDayKilled = 0;

  int lastDayPlayersKilled = 0;

  int lastWeekKilled = 0;

  int lastWeekPlayersKilled = 0;

  MainTotal();

  @override
  String toString() {
    return 'MainTotal[lastDayKilled=$lastDayKilled, lastDayPlayersKilled=$lastDayPlayersKilled, lastWeekKilled=$lastWeekKilled, lastWeekPlayersKilled=$lastWeekPlayersKilled, ]';
  }

  MainTotal.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    lastDayKilled = json['last_day_killed'];
    lastDayPlayersKilled = json['last_day_players_killed'];
    lastWeekKilled = json['last_week_killed'];
    lastWeekPlayersKilled = json['last_week_players_killed'];
  }

  Map<String, dynamic> toJson() {
    return {
      'last_day_killed': lastDayKilled,
      'last_day_players_killed': lastDayPlayersKilled,
      'last_week_killed': lastWeekKilled,
      'last_week_players_killed': lastWeekPlayersKilled
    };
  }

  static List<MainTotal> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainTotal>[]
        : json.map((value) => MainTotal.fromJson(value)).toList();
  }

  static Map<String, MainTotal> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainTotal>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainTotal.fromJson(value));
    }
    return map;
  }
}
