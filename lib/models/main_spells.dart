import 'main_spell.dart';

class MainSpells {
  List<MainSpell> spellList = [];

  String spellsFilter = "";

  MainSpells();

  @override
  String toString() {
    return 'MainSpells[spellList=$spellList, spellsFilter=$spellsFilter, ]';
  }

  MainSpells.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    spellList = MainSpell.listFromJson(json['spell_list']);
    spellsFilter = json['spells_filter'];
  }

  Map<String, dynamic> toJson() {
    return {'spell_list': spellList, 'spells_filter': spellsFilter};
  }

  static List<MainSpells> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainSpells>[]
        : json.map((value) => MainSpells.fromJson(value)).toList();
  }

  static Map<String, MainSpells> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainSpells>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainSpells.fromJson(value));
    }
    return map;
  }
}
