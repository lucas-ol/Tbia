import 'main_information.dart';
import 'main_worlds.dart';

class MainWorldResponse {
  MainInformation information = MainInformation();

  MainWorlds worlds = MainWorlds();

  MainWorldResponse();

  @override
  String toString() {
    return 'MainWorldResponse[information=$information, worlds=$worlds, ]';
  }

  MainWorldResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    information = MainInformation.fromJson(json['information']);
    worlds = MainWorlds.fromJson(json['worlds']);
  }

  Map<String, dynamic> toJson() {
    return {'information': information, 'worlds': worlds};
  }

  static List<MainWorldResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainWorldResponse>[]
        : json.map((value) => MainWorldResponse.fromJson(value)).toList();
  }

  static Map<String, MainWorldResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainWorldResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainWorldResponse.fromJson(value));
    }
    return map;
  }
}
