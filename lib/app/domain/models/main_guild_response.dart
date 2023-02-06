import 'main_guilds.dart';
import 'main_information.dart';

class MainGuildResponse {
  MainGuilds guilds = MainGuilds();

  MainInformation information = MainInformation();

  MainGuildResponse();

  @override
  String toString() {
    return 'MainGuildResponse[guilds=$guilds, information=$information, ]';
  }

  MainGuildResponse.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    guilds = MainGuilds.fromJson(json['guilds']);
    information = MainInformation.fromJson(json['information']);
  }

  Map<String, dynamic> toJson() {
    return {'guilds': guilds, 'information': information};
  }

  static List<MainGuildResponse> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainGuildResponse>[]
        : json.map((value) => MainGuildResponse.fromJson(value)).toList();
  }

  static Map<String, MainGuildResponse> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainGuildResponse>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainGuildResponse.fromJson(value));
    }
    return map;
  }
}
