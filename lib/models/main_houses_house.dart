import 'main_houses_auction.dart';

class MainHousesHouse {
  MainHousesAuction auction = MainHousesAuction();

  bool auctioned = false;

  int houseId = 0;

  String name = "";

  int rent = 0;

  bool rented = false;

  int size = 0;

  MainHousesHouse();

  @override
  String toString() {
    return 'MainHousesHouse[auction=$auction, auctioned=$auctioned, houseId=$houseId, name=$name, rent=$rent, rented=$rented, size=$size, ]';
  }

  MainHousesHouse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    auction = MainHousesAuction.fromJson(json['auction']);
    auctioned = json['auctioned'];
    houseId = json['house_id'];
    name = json['name'];
    rent = json['rent'];
    rented = json['rented'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    return {
      'auction': auction,
      'auctioned': auctioned,
      'house_id': houseId,
      'name': name,
      'rent': rent,
      'rented': rented,
      'size': size
    };
  }

  static List<MainHousesHouse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHousesHouse>[]
        : json.map((value) => MainHousesHouse.fromJson(value)).toList();
  }

  static Map<String, MainHousesHouse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHousesHouse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHousesHouse.fromJson(value));
    }
    return map;
  }
}
