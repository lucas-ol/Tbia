class MainOtherCharacters {
  /* don't know how to do that yet.. */
  bool deleted = false;

  bool main = false;

  String name = "";

/* online/offline */
  String status = "";

  bool traded = false;

  String world = "";

  MainOtherCharacters();

  @override
  String toString() {
    return 'MainOtherCharacters[deleted=$deleted, main=$main, name=$name, status=$status, traded=$traded, world=$world, ]';
  }

  MainOtherCharacters.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    deleted = json['deleted'];
    main = json['main'];
    name = json['name'];
    status = json['status'];
    traded = json['traded'];
    world = json['world'];
  }

  Map<String, dynamic> toJson() {
    return {
      'deleted': deleted,
      'main': main,
      'name': name,
      'status': status,
      'traded': traded,
      'world': world
    };
  }

  static List<MainOtherCharacters> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainOtherCharacters>[]
        : json.map((value) => MainOtherCharacters.fromJson(value)).toList();
  }

  static Map<String, MainOtherCharacters> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainOtherCharacters>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainOtherCharacters.fromJson(value));
    }
    return map;
  }
}
