import 'main_rune_information.dart';
import 'main_spell_information.dart';

class MainSpellData {
  String description = "";

  bool hasRuneInformation = false;

  bool hasSpellInformation = false;

  String imageUrl = "";

  String name = "";

  MainRuneInformation runeInformation = MainRuneInformation();

  String spellId = "";

  MainSpellInformation spellInformation = MainSpellInformation();

  MainSpellData();

  @override
  String toString() {
    return 'MainSpellData[description=$description, hasRuneInformation=$hasRuneInformation, hasSpellInformation=$hasSpellInformation, imageUrl=$imageUrl, name=$name, runeInformation=$runeInformation, spellId=$spellId, spellInformation=$spellInformation, ]';
  }

  MainSpellData.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    description = json['description'];
    hasRuneInformation = json['has_rune_information'];
    hasSpellInformation = json['has_spell_information'];
    imageUrl = json['image_url'];
    name = json['name'];
    runeInformation = MainRuneInformation.fromJson(json['rune_information']);
    spellId = json['spell_id'];
    spellInformation = MainSpellInformation.fromJson(json['spell_information']);
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'has_rune_information': hasRuneInformation,
      'has_spell_information': hasSpellInformation,
      'image_url': imageUrl,
      'name': name,
      'rune_information': runeInformation,
      'spell_id': spellId,
      'spell_information': spellInformation
    };
  }

  static List<MainSpellData> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainSpellData>[]
        : json.map((value) => MainSpellData.fromJson(value)).toList();
  }

  static Map<String, MainSpellData> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainSpellData>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainSpellData.fromJson(value));
    }
    return map;
  }
}
