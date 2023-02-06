class MainInvitedGuildMember {
  String date = "";

  String name = "";

  MainInvitedGuildMember();

  @override
  String toString() {
    return 'MainInvitedGuildMember[date=$date, name=$name, ]';
  }

  MainInvitedGuildMember.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    date = json['date'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {'date': date, 'name': name};
  }

  static List<MainInvitedGuildMember> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainInvitedGuildMember>[]
        : json.map((value) => MainInvitedGuildMember.fromJson(value)).toList();
  }

  static Map<String, MainInvitedGuildMember> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainInvitedGuildMember>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainInvitedGuildMember.fromJson(value));
    }
    return map;
  }
}
