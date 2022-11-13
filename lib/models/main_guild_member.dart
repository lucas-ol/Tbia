class MainGuildMember {
  String joined = "";

  int level = 0;

  String name = "";

  String rank = "";

  String status = "";

  String title = "";

  String vocation = "";

  MainGuildMember();

  @override
  String toString() {
    return 'MainGuildMember[joined=$joined, level=$level, name=$name, rank=$rank, status=$status, title=$title, vocation=$vocation, ]';
  }

  MainGuildMember.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    joined = json['joined'];
    level = json['level'];
    name = json['name'];
    rank = json['rank'];
    status = json['status'];
    title = json['title'];
    vocation = json['vocation'];
  }

  Map<String, dynamic> toJson() {
    return {
      'joined': joined,
      'level': level,
      'name': name,
      'rank': rank,
      'status': status,
      'title': title,
      'vocation': vocation
    };
  }

  static List<MainGuildMember> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainGuildMember>[]
        : json.map((value) => MainGuildMember.fromJson(value)).toList();
  }

  static Map<String, MainGuildMember> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainGuildMember>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainGuildMember.fromJson(value));
    }
    return map;
  }
}
