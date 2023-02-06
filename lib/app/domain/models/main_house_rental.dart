class MainHouseRental {
  String movingDate = "";

  String owner = "";

  String ownerSex = "";

  String paidUntil = "";

  bool transferAccept = false;

  int transferPrice = 0;

  String transferReceiver = "";

  MainHouseRental();

  @override
  String toString() {
    return 'MainHouseRental[movingDate=$movingDate, owner=$owner, ownerSex=$ownerSex, paidUntil=$paidUntil, transferAccept=$transferAccept, transferPrice=$transferPrice, transferReceiver=$transferReceiver, ]';
  }

  MainHouseRental.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    movingDate = json['moving_date'];
    owner = json['owner'];
    ownerSex = json['owner_sex'];
    paidUntil = json['paid_until'];
    transferAccept = json['transfer_accept'];
    transferPrice = json['transfer_price'];
    transferReceiver = json['transfer_receiver'];
  }

  Map<String, dynamic> toJson() {
    return {
      'moving_date': movingDate,
      'owner': owner,
      'owner_sex': ownerSex,
      'paid_until': paidUntil,
      'transfer_accept': transferAccept,
      'transfer_price': transferPrice,
      'transfer_receiver': transferReceiver
    };
  }

  static List<MainHouseRental> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHouseRental>[]
        : json.map((value) => MainHouseRental.fromJson(value)).toList();
  }

  static Map<String, MainHouseRental> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHouseRental>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHouseRental.fromJson(value));
    }
    return map;
  }
}
