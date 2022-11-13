class MainHouses {
  int houseid = 0;

  String name = "";

  String paid = "";

  String town = "";

  MainHouses();

  @override
  String toString() {
    return 'MainHouses[houseid=$houseid, name=$name, paid=$paid, town=$town, ]';
  }

  MainHouses.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    houseid = json['houseid'];
    name = json['name'];
    paid = json['paid'];
    town = json['town'];
  }

  Map<String, dynamic> toJson() {
    return {'houseid': houseid, 'name': name, 'paid': paid, 'town': town};
  }

  static List<MainHouses> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHouses>[]
        : json.map((value) => MainHouses.fromJson(value)).toList();
  }

  static Map<String, MainHouses> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHouses>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHouses.fromJson(value));
    }
    return map;
  }
}
