class MainHousesAuction {
  int currentBid = 0;

  bool finished = false;

  String timeLeft = "";

  MainHousesAuction();

  @override
  String toString() {
    return 'MainHousesAuction[currentBid=$currentBid, finished=$finished, timeLeft=$timeLeft, ]';
  }

  MainHousesAuction.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    currentBid = json['current_bid'];
    finished = json['finished'];
    timeLeft = json['time_left'];
  }

  Map<String, dynamic> toJson() {
    return {
      'current_bid': currentBid,
      'finished': finished,
      'time_left': timeLeft
    };
  }

  static List<MainHousesAuction> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHousesAuction>[]
        : json.map((value) => MainHousesAuction.fromJson(value)).toList();
  }

  static Map<String, MainHousesAuction> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHousesAuction>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHousesAuction.fromJson(value));
    }
    return map;
  }
}
