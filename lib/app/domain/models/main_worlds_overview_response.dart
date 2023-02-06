import 'main_information.dart';
import 'main_overview_worlds.dart';

class MainWorldsOverviewResponse {
  MainInformation information = MainInformation();

  MainOverviewWorlds worlds = MainOverviewWorlds();

  MainWorldsOverviewResponse();

  @override
  String toString() {
    return 'MainWorldsOverviewResponse[information=$information, worlds=$worlds, ]';
  }

  MainWorldsOverviewResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    information = MainInformation.fromJson(json['information']);
    worlds = MainOverviewWorlds.fromJson(json['worlds']);
  }

  Map<String, dynamic> toJson() {
    return {'information': information, 'worlds': worlds};
  }

  static List<MainWorldsOverviewResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainWorldsOverviewResponse>[]
        : json
            .map((value) => MainWorldsOverviewResponse.fromJson(value))
            .toList();
  }

  static Map<String, MainWorldsOverviewResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainWorldsOverviewResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainWorldsOverviewResponse.fromJson(value));
    }
    return map;
  }
}
