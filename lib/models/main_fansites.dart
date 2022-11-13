import 'main_fansite.dart';

class MainFansites {
  List<MainFansite> promoted = [];

  List<MainFansite> supported = [];

  MainFansites();

  @override
  String toString() {
    return 'MainFansites[promoted=$promoted, supported=$supported, ]';
  }

  MainFansites.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    promoted = MainFansite.listFromJson(json['promoted']);
    supported = MainFansite.listFromJson(json['supported']);
  }

  Map<String, dynamic> toJson() {
    return {'promoted': promoted, 'supported': supported};
  }

  static List<MainFansites> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainFansites>[]
        : json.map((value) => MainFansites.fromJson(value)).toList();
  }

  static Map<String, MainFansites> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainFansites>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainFansites.fromJson(value));
    }
    return map;
  }
}
