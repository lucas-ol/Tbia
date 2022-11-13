import 'main_information.dart';
import 'main_news.dart';

class MainNewsResponse {
  MainInformation information = MainInformation();

  MainNews news = MainNews();

  MainNewsResponse();

  @override
  String toString() {
    return 'MainNewsResponse[information=$information, news=$news, ]';
  }

  MainNewsResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    information = MainInformation.fromJson(json['information']);
    news = MainNews.fromJson(json['news']);
  }

  Map<String, dynamic> toJson() {
    return {'information': information, 'news': news};
  }

  static List<MainNewsResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainNewsResponse>[]
        : json.map((value) => MainNewsResponse.fromJson(value)).toList();
  }

  static Map<String, MainNewsResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainNewsResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainNewsResponse.fromJson(value));
    }
    return map;
  }
}
