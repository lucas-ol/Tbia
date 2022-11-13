class MainContentType {
  bool statistics = false;

  bool texts = false;

  bool tools = false;

  bool wiki = false;

  MainContentType();

  @override
  String toString() {
    return 'MainContentType[statistics=$statistics, texts=$texts, tools=$tools, wiki=$wiki, ]';
  }

  MainContentType.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    statistics = json['statistics'];
    texts = json['texts'];
    tools = json['tools'];
    wiki = json['wiki'];
  }

  Map<String, dynamic> toJson() {
    return {
      'statistics': statistics,
      'texts': texts,
      'tools': tools,
      'wiki': wiki
    };
  }

  static List<MainContentType> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainContentType>[]
        : json.map((value) => MainContentType.fromJson(value)).toList();
  }

  static Map<String, MainContentType> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainContentType>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainContentType.fromJson(value));
    }
    return map;
  }
}
