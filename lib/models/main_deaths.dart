import 'main_killers.dart';

class MainDeaths {
  List<MainKillers> assists = [];

  List<MainKillers> killers = [];

  int level = 0;

  String reason = "";

  String time = "";

  MainDeaths();

  @override
  String toString() {
    return 'MainDeaths[assists=$assists, killers=$killers, level=$level, reason=$reason, time=$time, ]';
  }

  MainDeaths.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    assists = MainKillers.listFromJson(json['assists']);
    killers = MainKillers.listFromJson(json['killers']);
    level = json['level'];
    reason = json['reason'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    return {
      'assists': assists,
      'killers': killers,
      'level': level,
      'reason': reason,
      'time': time
    };
  }

  static List<MainDeaths> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainDeaths>[]
        : json.map((value) => MainDeaths.fromJson(value)).toList();
  }

  static Map<String, MainDeaths> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainDeaths>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainDeaths.fromJson(value));
    }
    return map;
  }
}
