class MainOverviewBoostableBoss {
  bool featured = false;

  String imageUrl = "";

  String name = "";

  MainOverviewBoostableBoss();

  @override
  String toString() {
    return 'MainOverviewBoostableBoss[featured=$featured, imageUrl=$imageUrl, name=$name, ]';
  }

  MainOverviewBoostableBoss.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    featured = json['featured'];
    imageUrl = json['image_url'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'featured': featured, 'image_url': imageUrl, 'name': name};
  }

  static List<MainOverviewBoostableBoss> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainOverviewBoostableBoss>[]
        : json
            .map((value) => MainOverviewBoostableBoss.fromJson(value))
            .toList();
  }

  static Map<String, MainOverviewBoostableBoss> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainOverviewBoostableBoss>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainOverviewBoostableBoss.fromJson(value));
    }
    return map;
  }
}
