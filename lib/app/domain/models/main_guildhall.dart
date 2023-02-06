class MainGuildhall {
  String name = "";

/* Town      string `json:\"town\"`       // We can collect that from cached info?   Status    string `json:\"status\"`     // rented (but maybe also auctioned)   Owner     string `json:\"owner\"`      // We can collect that from cached info?   HouseID   int    `json:\"houseid\"`    // We can collect that from cached info? */
  String paidUntil = "";

/* Maybe duplicate info? Guild can only be on one world.. */
  String world = "";

  MainGuildhall();

  @override
  String toString() {
    return 'MainGuildhall[name=$name, paidUntil=$paidUntil, world=$world, ]';
  }

  MainGuildhall.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name = json['name'];
    paidUntil = json['paid_until'];
    world = json['world'];
  }

  Map<String, dynamic> toJson() {
    return {'name': name, 'paid_until': paidUntil, 'world': world};
  }

  static List<MainGuildhall> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainGuildhall>[]
        : json.map((value) => MainGuildhall.fromJson(value)).toList();
  }

  static Map<String, MainGuildhall> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainGuildhall>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainGuildhall.fromJson(value));
    }
    return map;
  }
}
