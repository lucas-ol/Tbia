class MainNewsItem {
  String category = "";

  DateTime date = DateTime.now();

  int id = 0;

  String news = "";

  String type = "";

  String url = "";

  String urlApi = "";

  MainNewsItem();

  @override
  String toString() {
    return 'MainNewsItem[category=$category, date=$date, id=$id, news=$news, type=$type, url=$url, urlApi=$urlApi, ]';
  }

  MainNewsItem.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    category = json['category'];
    date = DateTime.parse(json['date']);
    id = json['id'];
    news = json['news'];
    type = json['type'];
    url = json['url'];
    // urlApi = json['url_api'];
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'date': date,
      'id': id,
      'news': news,
      'type': type,
      'url': url,
      'url_api': urlApi
    };
  }

  static List<MainNewsItem> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainNewsItem>[]
        : json.map((value) => MainNewsItem.fromJson(value)).toList();
  }

  static Map<String, MainNewsItem> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainNewsItem>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainNewsItem.fromJson(value));
    }
    return map;
  }
}
