import 'main_information.dart';
import 'main_news_item.dart';

class MainNewsListResponse {
  MainInformation information = MainInformation();

  List<MainNewsItem> news = [];

  MainNewsListResponse();

  @override
  String toString() {
    return 'MainNewsListResponse[information=$information, news=$news, ]';
  }

  MainNewsListResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    information = MainInformation.fromJson(json['information']);
    news = MainNewsItem.listFromJson(json['news']);
  }

  Map<String, dynamic> toJson() {
    return {'information': information, 'news': news};
  }

  static List<MainNewsListResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainNewsListResponse>[]
        : json.map((value) => MainNewsListResponse.fromJson(value)).toList();
  }

  static Map<String, MainNewsListResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainNewsListResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainNewsListResponse.fromJson(value));
    }
    return map;
  }
}
