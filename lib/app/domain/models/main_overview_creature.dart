class MainOverviewCreature {
  bool featured = false;

  String imageUrl = "";

  String name = "";

  String race = "";

  MainOverviewCreature();

  @override
  String toString() {
    return 'MainOverviewCreature[featured=$featured, imageUrl=$imageUrl, name=$name, race=$race, ]';
  }

  MainOverviewCreature.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    featured = json['featured'];
    imageUrl = json['image_url'];
    name = json['name'];
    race = json['race'];
  }

  Map<String, dynamic> toJson() {
    return {
      'featured': featured,
      'image_url': imageUrl,
      'name': name,
      'race': race
    };
  }

  static List<MainOverviewCreature> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainOverviewCreature>[]
        : json.map((value) => MainOverviewCreature.fromJson(value)).toList();
  }

  static Map<String, MainOverviewCreature> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainOverviewCreature>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainOverviewCreature.fromJson(value));
    }
    return map;
  }
}
