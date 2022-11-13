import 'main_house_status.dart';

class MainHouse {
  int beds = 0;

  int houseid = 0;

  String img = "";

  String name = "";

  int rent = 0;

  int size = 0;

  MainHouseStatus status = MainHouseStatus();

  String town = "";

  String type = "";

  String world = "";

  MainHouse();

  @override
  String toString() {
    return 'MainHouse[beds=$beds, houseid=$houseid, img=$img, name=$name, rent=$rent, size=$size, status=$status, town=$town, type=$type, world=$world, ]';
  }

  MainHouse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    beds = json['beds'];
    houseid = json['houseid'];
    img = json['img'];
    name = json['name'];
    rent = json['rent'];
    size = json['size'];
    status = MainHouseStatus.fromJson(json['status']);
    town = json['town'];
    type = json['type'];
    world = json['world'];
  }

  Map<String, dynamic> toJson() {
    return {
      'beds': beds,
      'houseid': houseid,
      'img': img,
      'name': name,
      'rent': rent,
      'size': size,
      'status': status,
      'town': town,
      'type': type,
      'world': world
    };
  }

  static List<MainHouse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHouse>[]
        : json.map((value) => MainHouse.fromJson(value)).toList();
  }

  static Map<String, MainHouse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHouse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHouse.fromJson(value));
    }
    return map;
  }
}
