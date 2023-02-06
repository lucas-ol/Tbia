class MainNews {
  String category = "";

  String content = "";

  String contentHtml = "";

  String date = "";

  int id = 0;

  String title = "";

  String type = "";

  String url = "";

  MainNews();

  @override
  String toString() {
    return 'MainNews[category=$category, content=$content, contentHtml=$contentHtml, date=$date, id=$id, title=$title, type=$type, url=$url, ]';
  }

  MainNews.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    category = json['category'];
    content = json['content'];
    contentHtml = json['content_html'];
    date = json['date'];
    id = json['id'];
    title = json['title'];
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'content': content,
      'content_html': contentHtml,
      'date': date,
      'id': id,
      'title': title,
      'type': type,
      'url': url
    };
  }

  static List<MainNews> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainNews>[]
        : json.map((value) => MainNews.fromJson(value)).toList();
  }

  static Map<String, MainNews> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainNews>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainNews.fromJson(value));
    }
    return map;
  }
}
