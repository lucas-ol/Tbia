import 'main_information.dart';
import 'main_kill_statistics.dart';

class MainKillStatisticsResponse {
  MainInformation information = MainInformation();

  MainKillStatistics killstatistics = MainKillStatistics();

  MainKillStatisticsResponse();

  @override
  String toString() {
    return 'MainKillStatisticsResponse[information=$information, killstatistics=$killstatistics, ]';
  }

  MainKillStatisticsResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    information = MainInformation.fromJson(json['information']);
    killstatistics = MainKillStatistics.fromJson(json['killstatistics']);
  }

  Map<String, dynamic> toJson() {
    return {'information': information, 'killstatistics': killstatistics};
  }

  static List<MainKillStatisticsResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainKillStatisticsResponse>[]
        : json
            .map((value) => MainKillStatisticsResponse.fromJson(value))
            .toList();
  }

  static Map<String, MainKillStatisticsResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainKillStatisticsResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainKillStatisticsResponse.fromJson(value));
    }
    return map;
  }
}
