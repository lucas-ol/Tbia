class MainKillers {
  String name = "";

  bool player = false;

  String summon = "";

  bool traded = false;

  MainKillers();

  @override
  String toString() {
    return 'MainKillers[name=$name, player=$player, summon=$summon, traded=$traded, ]';
  }

  MainKillers.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name = json['name'];
    player = json['player'];
    summon = json['summon'];
    traded = json['traded'];
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'player': player, 'summon': summon, 'traded': traded};
  }

  static List<MainKillers> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainKillers>[]
        : json.map((value) => MainKillers.fromJson(value)).toList();
  }

  static Map<String, MainKillers> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainKillers>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainKillers.fromJson(value));
    }
    return map;
  }
}
