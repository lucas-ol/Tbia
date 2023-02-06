class MainOverviewGuild {
  String description = "";

  String logoUrl = "";

  String name = "";

  MainOverviewGuild();

  @override
  String toString() {
    return 'MainOverviewGuild[description=$description, logoUrl=$logoUrl, name=$name, ]';
  }

  MainOverviewGuild.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    description = json['description'];
    logoUrl = json['logo_url'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'description': description, 'logo_url': logoUrl, 'name': name};
  }

  static List<MainOverviewGuild> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainOverviewGuild>[]
        : json.map((value) => MainOverviewGuild.fromJson(value)).toList();
  }

  static Map<String, MainOverviewGuild> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainOverviewGuild>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainOverviewGuild.fromJson(value));
    }
    return map;
  }
}
