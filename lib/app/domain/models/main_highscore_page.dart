class MainHighscorePage {
  /* Current page */
  int currentPage = 1;

/* Total page count */
  int totalPages = 0;

/* Total highscore records */
  int totalRecords = 100;

  MainHighscorePage();

  @override
  String toString() {
    return 'MainHighscorePage[currentPage=$currentPage, totalPages=$totalPages, totalRecords=$totalRecords, ]';
  }

  MainHighscorePage.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    currentPage = json['current_page'];
    totalPages = json['total_pages'];
    totalRecords = json['total_records'];
  }

  Map<String, dynamic> toJson() {
    return {
      'current_page': currentPage,
      'total_pages': totalPages,
      'total_records': totalRecords
    };
  }

  static List<MainHighscorePage> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainHighscorePage>[]
        : json.map((value) => MainHighscorePage.fromJson(value)).toList();
  }

  static Map<String, MainHighscorePage> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainHighscorePage>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainHighscorePage.fromJson(value));
    }
    return map;
  }
}
