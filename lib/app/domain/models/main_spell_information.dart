class MainSpellInformation {
  int amount = 1;

  List<String> city = [];

  int cooldownAlone = 1;

  int cooldownGroup = 1;

  String damageType = "";

  String formula = "";

  bool groupAttack = false;

  bool groupHealing = false;

  bool groupSupport = false;

  int level = 1;

  int mana = 0;

  bool premiumOnly = false;

  int price = 0;

  int soulPoints = 0;

  bool typeInstant = false;

  bool typeRune = false;

  List<String> vocation = [];

  MainSpellInformation();

  @override
  String toString() {
    return 'MainSpellInformation[amount=$amount, city=$city, cooldownAlone=$cooldownAlone, cooldownGroup=$cooldownGroup, damageType=$damageType, formula=$formula, groupAttack=$groupAttack, groupHealing=$groupHealing, groupSupport=$groupSupport, level=$level, mana=$mana, premiumOnly=$premiumOnly, price=$price, soulPoints=$soulPoints, typeInstant=$typeInstant, typeRune=$typeRune, vocation=$vocation, ]';
  }

  MainSpellInformation.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    amount = json['amount'];
    city = (json['city'] as List).map((item) => item as String).toList();
    cooldownAlone = json['cooldown_alone'];
    cooldownGroup = json['cooldown_group'];
    damageType = json['damage_type'];
    formula = json['formula'];
    groupAttack = json['group_attack'];
    groupHealing = json['group_healing'];
    groupSupport = json['group_support'];
    level = json['level'];
    mana = json['mana'];
    premiumOnly = json['premium_only'];
    price = json['price'];
    soulPoints = json['soul_points'];
    typeInstant = json['type_instant'];
    typeRune = json['type_rune'];
    vocation =
        (json['vocation'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'city': city,
      'cooldown_alone': cooldownAlone,
      'cooldown_group': cooldownGroup,
      'damage_type': damageType,
      'formula': formula,
      'group_attack': groupAttack,
      'group_healing': groupHealing,
      'group_support': groupSupport,
      'level': level,
      'mana': mana,
      'premium_only': premiumOnly,
      'price': price,
      'soul_points': soulPoints,
      'type_instant': typeInstant,
      'type_rune': typeRune,
      'vocation': vocation
    };
  }

  static List<MainSpellInformation> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainSpellInformation>[]
        : json.map((value) => MainSpellInformation.fromJson(value)).toList();
  }

  static Map<String, MainSpellInformation> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainSpellInformation>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainSpellInformation.fromJson(value));
    }
    return map;
  }
}
