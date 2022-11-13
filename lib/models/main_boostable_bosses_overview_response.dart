import 'main_boostable_bosses_container.dart';
import 'main_information.dart';

class MainBoostableBossesOverviewResponse {
  MainBoostableBossesContainer boostableBosses = MainBoostableBossesContainer();

  MainInformation information = MainInformation();

  MainBoostableBossesOverviewResponse();

  @override
  String toString() {
    return 'MainBoostableBossesOverviewResponse[boostableBosses=$boostableBosses, information=$information, ]';
  }

  MainBoostableBossesOverviewResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    boostableBosses =
        MainBoostableBossesContainer.fromJson(json['boostable_bosses']);
    information = MainInformation.fromJson(json['information']);
  }

  Map<String, dynamic> toJson() {
    return {'boostable_bosses': boostableBosses, 'information': information};
  }

  static List<MainBoostableBossesOverviewResponse> listFromJson(
      List<dynamic>? json) {
    return json == null
        ? <MainBoostableBossesOverviewResponse>[]
        : json
            .map((value) => MainBoostableBossesOverviewResponse.fromJson(value))
            .toList();
  }

  static Map<String, MainBoostableBossesOverviewResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainBoostableBossesOverviewResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainBoostableBossesOverviewResponse.fromJson(value));
    }
    return map;
  }
}
