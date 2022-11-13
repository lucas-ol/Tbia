import 'main_entry.dart';
import 'main_total.dart';

class MainKillStatistics {
  List<MainEntry> entries = [];

  MainTotal total = MainTotal();

  String world = "";

  MainKillStatistics();

  @override
  String toString() {
    return 'MainKillStatistics[entries=$entries, total=$total, world=$world, ]';
  }

  MainKillStatistics.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    entries = MainEntry.listFromJson(json['entries']);
    total = MainTotal.fromJson(json['total']);
    world = json['world'];
  }

  Map<String, dynamic> toJson() {
    return {'entries': entries, 'total': total, 'world': world};
  }

  static List<MainKillStatistics> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainKillStatistics>[]
        : json.map((value) => MainKillStatistics.fromJson(value)).toList();
  }

  static Map<String, MainKillStatistics> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainKillStatistics>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainKillStatistics.fromJson(value));
    }
    return map;
  }
}
