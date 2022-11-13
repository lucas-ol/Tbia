class MainAccountInformation {
  String created = "";

  String loyaltyTitle = "";

  String position = "";

  MainAccountInformation();

  @override
  String toString() {
    return 'MainAccountInformation[created=$created, loyaltyTitle=$loyaltyTitle, position=$position, ]';
  }

  MainAccountInformation.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    created = json['created'];
    loyaltyTitle = json['loyalty_title'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    return {
      'created': created,
      'loyalty_title': loyaltyTitle,
      'position': position
    };
  }

  static List<MainAccountInformation> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainAccountInformation>[]
        : json.map((value) => MainAccountInformation.fromJson(value)).toList();
  }

  static Map<String, MainAccountInformation> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    Map<String, MainAccountInformation> map = {};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainAccountInformation.fromJson(value));
    }
    return map;
  }
}
