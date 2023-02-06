import 'main_house_auction.dart';
import 'main_house_rental.dart';

class MainHouseStatus {
  MainHouseAuction auction = MainHouseAuction();

  bool isAuctioned = false;

  bool isMoving = false;

  bool isRented = false;

  bool isTransfering = false;

  String original = "";

  MainHouseRental rental = MainHouseRental();

  MainHouseStatus();

  @override
  String toString() {
    return 'MainHouseStatus[auction=$auction, isAuctioned=$isAuctioned, isMoving=$isMoving, isRented=$isRented, isTransfering=$isTransfering, original=$original, rental=$rental, ]';
  }

  MainHouseStatus.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    auction = MainHouseAuction.fromJson(json['auction']);
    isAuctioned = json['is_auctioned'];
    isMoving = json['is_moving'];
    isRented = json['is_rented'];
    isTransfering = json['is_transfering'];
    original = json['original'];
    rental = MainHouseRental.fromJson(json['rental']);
  }

  Map<String, dynamic> toJson() {
    return {
      'auction': auction,
      'is_auctioned': isAuctioned,
      'is_moving': isMoving,
      'is_rented': isRented,
      'is_transfering': isTransfering,
      'original': original,
      'rental': rental
    };
  }

  static List<MainHouseStatus> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHouseStatus>[]
        : json.map((value) => MainHouseStatus.fromJson(value)).toList();
  }

  static Map<String, MainHouseStatus> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHouseStatus>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHouseStatus.fromJson(value));
    }
    return map;
  }
}
