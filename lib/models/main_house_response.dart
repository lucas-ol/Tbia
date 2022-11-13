import 'main_house.dart';
import 'main_information.dart';

class MainHouseResponse {
  MainHouse house = MainHouse();

  MainInformation information = MainInformation();

  MainHouseResponse();

  @override
  String toString() {
    return 'MainHouseResponse[house=$house, information=$information, ]';
  }

  MainHouseResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    house = MainHouse.fromJson(json['house']);
    information = MainInformation.fromJson(json['information']);
  }

  Map<String, dynamic> toJson() {
    return {'house': house, 'information': information};
  }

  static List<MainHouseResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHouseResponse>[]
        : json.map((value) => MainHouseResponse.fromJson(value)).toList();
  }

  static Map<String, MainHouseResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHouseResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHouseResponse.fromJson(value));
    }
    return map;
  }
}
