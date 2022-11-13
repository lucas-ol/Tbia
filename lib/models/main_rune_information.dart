class MainRuneInformation {
  String damageType = "";

  bool groupAttack = false;

  bool groupHealing = false;

  bool groupSupport = false;

  int level = 0;

  int magicLevel = 0;

  List<String> vocation = [];

  MainRuneInformation();

  @override
  String toString() {
    return 'MainRuneInformation[damageType=$damageType, groupAttack=$groupAttack, groupHealing=$groupHealing, groupSupport=$groupSupport, level=$level, magicLevel=$magicLevel, vocation=$vocation, ]';
  }

  MainRuneInformation.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    damageType = json['damage_type'];
    groupAttack = json['group_attack'];
    groupHealing = json['group_healing'];
    groupSupport = json['group_support'];
    level = json['level'];
    magicLevel = json['magic_level'];
    vocation =
        (json['vocation'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'damage_type': damageType,
      'group_attack': groupAttack,
      'group_healing': groupHealing,
      'group_support': groupSupport,
      'level': level,
      'magic_level': magicLevel,
      'vocation': vocation
    };
  }

  static List<MainRuneInformation> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainRuneInformation>[]
        : json.map((value) => MainRuneInformation.fromJson(value)).toList();
  }

  static Map<String, MainRuneInformation> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainRuneInformation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainRuneInformation.fromJson(value));
    }
    return map;
  }
}
