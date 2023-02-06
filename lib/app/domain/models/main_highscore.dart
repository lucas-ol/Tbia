class MainHighscore {
  /* Level column */
  int level = 1;

/* Name column */
  String name = "";

/* Rank column */
  int rank = 0;

/* Title column (when category: loyalty) */
  String title = "";

/* Points/SkillLevel column */
  int value = 0;

/* Vocation column */
  String vocation = "";

/* World column */
  String world = "";

  MainHighscore();

  @override
  String toString() {
    return 'MainHighscore[level=$level, name=$name, rank=$rank, title=$title, value=$value, vocation=$vocation, world=$world, ]';
  }

  MainHighscore.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    level = json['level'];
    name = json['name'];
    rank = json['rank'];
    title = json['title'];
    value = json['value'];
    vocation = json['vocation'];
    world = json['world'];
  }

  Map<String, dynamic> toJson() {
    return {
      'level': level,
      'name': name,
      'rank': rank,
      'title': title,
      'value': value,
      'vocation': vocation,
      'world': world
    };
  }

  static List<MainHighscore> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHighscore>[]
        : json.map((value) => MainHighscore.fromJson(value)).toList();
  }

  static Map<String, MainHighscore> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHighscore>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHighscore.fromJson(value));
    }
    return map;
  }
}
