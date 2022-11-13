class MainHouseAuction {
  String auctionEnd = "";

  bool auctionOngoing = false;

  int currentBid = 0;

  String currentBidder = "";

  MainHouseAuction();

  @override
  String toString() {
    return 'MainHouseAuction[auctionEnd=$auctionEnd, auctionOngoing=$auctionOngoing, currentBid=$currentBid, currentBidder=$currentBidder, ]';
  }

  MainHouseAuction.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    auctionEnd = json['auction_end'];
    auctionOngoing = json['auction_ongoing'];
    currentBid = json['current_bid'];
    currentBidder = json['current_bidder'];
  }

  Map<String, dynamic> toJson() {
    return {
      'auction_end': auctionEnd,
      'auction_ongoing': auctionOngoing,
      'current_bid': currentBid,
      'current_bidder': currentBidder
    };
  }

  static List<MainHouseAuction> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHouseAuction>[]
        : json.map((value) => MainHouseAuction.fromJson(value)).toList();
  }

  static Map<String, MainHouseAuction> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHouseAuction>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHouseAuction.fromJson(value));
    }
    return map;
  }
}
