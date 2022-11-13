class MainSpell {
  String formula = "";

  bool groupAttack = false;

  bool groupHealing = false;

  bool groupSupport = false;

  int level = 0;

  int mana = 0;

  String name = "";

  bool premiumOnly = false;

  int price = 0;

  String spellId = "";

  bool typeInstant = false;

  bool typeRune = false;

  MainSpell();

  @override
  String toString() {
    return 'MainSpell[formula=$formula, groupAttack=$groupAttack, groupHealing=$groupHealing, groupSupport=$groupSupport, level=$level, mana=$mana, name=$name, premiumOnly=$premiumOnly, price=$price, spellId=$spellId, typeInstant=$typeInstant, typeRune=$typeRune, ]';
  }

  MainSpell.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    formula = json['formula'];
    groupAttack = json['group_attack'];
    groupHealing = json['group_healing'];
    groupSupport = json['group_support'];
    level = json['level'];
    mana = json['mana'];
    name = json['name'];
    premiumOnly = json['premium_only'];
    price = json['price'];
    spellId = json['spell_id'];
    typeInstant = json['type_instant'];
    typeRune = json['type_rune'];
  }

  Map<String, dynamic> toJson() {
    return {
      'formula': formula,
      'group_attack': groupAttack,
      'group_healing': groupHealing,
      'group_support': groupSupport,
      'level': level,
      'mana': mana,
      'name': name,
      'premium_only': premiumOnly,
      'price': price,
      'spell_id': spellId,
      'type_instant': typeInstant,
      'type_rune': typeRune
    };
  }

  static List<MainSpell> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainSpell>[]
        : json.map((value) => MainSpell.fromJson(value)).toList();
  }

  static Map<String, MainSpell> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainSpell>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainSpell.fromJson(value));
    }
    return map;
  }
}
