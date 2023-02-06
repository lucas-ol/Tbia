class MainAchievements {
  int grade = 0;

  String name = "";

  bool secret = false;

  MainAchievements();

  @override
  String toString() {
    return 'MainAchievements[grade=$grade, name=$name, secret=$secret, ]';
  }

  MainAchievements.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    grade = json['grade'];
    name = json['name'];
    secret = json['secret'];
  }

  Map<String, dynamic> toJson() {
    return {'grade': grade, 'name': name, 'secret': secret};
  }

  static List<MainAchievements> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainAchievements>[]
        : json.map((value) => MainAchievements.fromJson(value)).toList();
  }

  static Map<String, MainAchievements> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    Map<String, MainAchievements> map = {};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainAchievements.fromJson(value));
    }
    return map;
  }
}
