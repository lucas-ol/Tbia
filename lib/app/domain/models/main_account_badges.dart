class MainAccountBadges {
  String description = "";

  String iconUrl = "";

  String name = "";

  MainAccountBadges();

  @override
  String toString() {
    return 'MainAccountBadges[description=$description, iconUrl=$iconUrl, name=$name, ]';
  }

  MainAccountBadges.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    description = json['description'];
    iconUrl = json['icon_url'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'description': description, 'icon_url': iconUrl, 'name': name};
  }

  static List<MainAccountBadges> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainAccountBadges>[]
        : json.map((value) => MainAccountBadges.fromJson(value)).toList();
  }

  static Map<String, MainAccountBadges> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    Map<String, MainAccountBadges> map = {};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainAccountBadges.fromJson(value));
    }
    return map;
  }
}
