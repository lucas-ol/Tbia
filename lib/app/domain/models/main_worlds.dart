import 'main_world.dart';

class MainWorlds {
  MainWorld world = MainWorld();

  MainWorlds();

  @override
  String toString() {
    return 'MainWorlds[world=$world, ]';
  }

  MainWorlds.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    world = MainWorld.fromJson(json['world']);
  }

  Map<String, dynamic> toJson() {
    return {'world': world};
  }

  static List<MainWorlds> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainWorlds>[]
        : json.map((value) => MainWorlds.fromJson(value)).toList();
  }

  static Map<String, MainWorlds> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainWorlds>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainWorlds.fromJson(value));
    }
    return map;
  }
}
