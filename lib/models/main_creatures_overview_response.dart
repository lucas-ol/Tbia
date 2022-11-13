import 'main_creatures_container.dart';
import 'main_information.dart';

class MainCreaturesOverviewResponse {
  MainCreaturesContainer creatures = MainCreaturesContainer();

  MainInformation information = MainInformation();

  MainCreaturesOverviewResponse();

  @override
  String toString() {
    return 'MainCreaturesOverviewResponse[creatures=$creatures, information=$information, ]';
  }

  MainCreaturesOverviewResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    creatures = MainCreaturesContainer.fromJson(json['creatures']);
    information = MainInformation.fromJson(json['information']);
  }

  Map<String, dynamic> toJson() {
    return {'creatures': creatures, 'information': information};
  }

  static List<MainCreaturesOverviewResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainCreaturesOverviewResponse>[]
        : json
            .map((value) => MainCreaturesOverviewResponse.fromJson(value))
            .toList();
  }

  static Map<String, MainCreaturesOverviewResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainCreaturesOverviewResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainCreaturesOverviewResponse.fromJson(value));
    }
    return map;
  }
}
