class MainOnlinePlayers {
  int level = 0;

  String name = "";

  String vocation = "";

  MainOnlinePlayers();

  @override
  String toString() {
    return 'MainOnlinePlayers[level=$level, name=$name, vocation=$vocation, ]';
  }

  MainOnlinePlayers.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    level = json['level'];
    name = json['name'];
    vocation = json['vocation'];
  }

  Map<String, dynamic> toJson() {
    return {'level': level, 'name': name, 'vocation': vocation};
  }

  static List<MainOnlinePlayers> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainOnlinePlayers>[]
        : json.map((value) => MainOnlinePlayers.fromJson(value)).toList();
  }

  static Map<String, MainOnlinePlayers> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainOnlinePlayers>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainOnlinePlayers.fromJson(value));
    }
    return map;
  }
}
