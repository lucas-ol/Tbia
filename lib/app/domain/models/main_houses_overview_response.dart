import 'main_houses_houses.dart';
import 'main_information.dart';

class MainHousesOverviewResponse {
  MainHousesHouses houses = MainHousesHouses();

  MainInformation information = MainInformation();

  MainHousesOverviewResponse();

  @override
  String toString() {
    return 'MainHousesOverviewResponse[houses=$houses, information=$information, ]';
  }

  MainHousesOverviewResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    houses = MainHousesHouses.fromJson(json['houses']);
    information = MainInformation.fromJson(json['information']);
  }

  Map<String, dynamic> toJson() {
    return {'houses': houses, 'information': information};
  }

  static List<MainHousesOverviewResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHousesOverviewResponse>[]
        : json
            .map((value) => MainHousesOverviewResponse.fromJson(value))
            .toList();
  }

  static Map<String, MainHousesOverviewResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHousesOverviewResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHousesOverviewResponse.fromJson(value));
    }
    return map;
  }
}
