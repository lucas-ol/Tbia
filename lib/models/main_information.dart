class MainInformation {
  int apiVersion = 0;

  String timestamp = "";

  MainInformation();

  @override
  String toString() {
    return 'MainInformation[apiVersion=$apiVersion, timestamp=$timestamp, ]';
  }

  MainInformation.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    apiVersion = json['api_version'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    return {'api_version': apiVersion, 'timestamp': timestamp};
  }

  static List<MainInformation> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainInformation>[]
        : json.map((value) => MainInformation.fromJson(value)).toList();
  }

  static Map<String, MainInformation> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainInformation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainInformation.fromJson(value));
    }
    return map;
  }
}
