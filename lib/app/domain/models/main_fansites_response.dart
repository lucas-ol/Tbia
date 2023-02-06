import 'main_fansites.dart';
import 'main_information.dart';

class MainFansitesResponse {
  MainFansites fansites = MainFansites();

  MainInformation information = MainInformation();

  MainFansitesResponse();

  @override
  String toString() {
    return 'MainFansitesResponse[fansites=$fansites, information=$information, ]';
  }

  MainFansitesResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    fansites = MainFansites.fromJson(json['fansites']);
    information = MainInformation.fromJson(json['information']);
  }

  Map<String, dynamic> toJson() {
    return {'fansites': fansites, 'information': information};
  }

  static List<MainFansitesResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainFansitesResponse>[]
        : json.map((value) => MainFansitesResponse.fromJson(value)).toList();
  }

  static Map<String, MainFansitesResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainFansitesResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainFansitesResponse.fromJson(value));
    }
    return map;
  }
}
