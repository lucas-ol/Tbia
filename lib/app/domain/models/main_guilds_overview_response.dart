import 'main_information.dart';
import 'main_overview_guilds.dart';

class MainGuildsOverviewResponse {
  MainOverviewGuilds guilds = MainOverviewGuilds();

  MainInformation information = MainInformation();

  MainGuildsOverviewResponse();

  @override
  String toString() {
    return 'MainGuildsOverviewResponse[guilds=$guilds, information=$information, ]';
  }

  MainGuildsOverviewResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    guilds = MainOverviewGuilds.fromJson(json['guilds']);
    information = MainInformation.fromJson(json['information']);
  }

  Map<String, dynamic> toJson() {
    return {'guilds': guilds, 'information': information};
  }

  static List<MainGuildsOverviewResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainGuildsOverviewResponse>[]
        : json
            .map((value) => MainGuildsOverviewResponse.fromJson(value))
            .toList();
  }

  static Map<String, MainGuildsOverviewResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainGuildsOverviewResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainGuildsOverviewResponse.fromJson(value));
    }
    return map;
  }
}
