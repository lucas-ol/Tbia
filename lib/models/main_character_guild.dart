class MainCharacterGuild {
  String name = "";

  String rank = "";

  MainCharacterGuild();

  @override
  String toString() {
    return 'MainCharacterGuild[name=$name, rank=$rank, ]';
  }

  MainCharacterGuild.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name = json['name'];
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'rank': rank};
  }

  static List<MainCharacterGuild> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainCharacterGuild>[]
        : json.map((value) => MainCharacterGuild.fromJson(value)).toList();
  }

  static Map<String, MainCharacterGuild> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainCharacterGuild>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainCharacterGuild.fromJson(value));
    }
    return map;
  }
}
