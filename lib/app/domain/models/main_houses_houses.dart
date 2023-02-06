import 'main_houses_house.dart';

class MainHousesHouses {
  List<MainHousesHouse> guildhallList = [];

  List<MainHousesHouse> houseList = [];

  String town = "";

  String world = "";

  MainHousesHouses();

  @override
  String toString() {
    return 'MainHousesHouses[guildhallList=$guildhallList, houseList=$houseList, town=$town, world=$world, ]';
  }

  MainHousesHouses.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    guildhallList = MainHousesHouse.listFromJson(json['guildhall_list']);
    houseList = MainHousesHouse.listFromJson(json['house_list']);
    town = json['town'];
    world = json['world'];
  }

  Map<String, dynamic> toJson() {
    return {
      'guildhall_list': guildhallList,
      'house_list': houseList,
      'town': town,
      'world': world
    };
  }

  static List<MainHousesHouses> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHousesHouses>[]
        : json.map((value) => MainHousesHouses.fromJson(value)).toList();
  }

  static Map<String, MainHousesHouses> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHousesHouses>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHousesHouses.fromJson(value));
    }
    return map;
  }
}
