class MainCreature {
  bool beConvinced = false;

  bool beParalysed = false;

  bool beSummoned = false;

  String behaviour = "";

  int convincedMana = 0;

  String description = "";

  int experiencePoints = 0;

  bool featured = false;

  int hitpoints = 0;

  String imageUrl = "";

  List<String> immune = [];

  bool isLootable = false;

  List<String> lootList = [];

  String name = "";

  String race = "";

  bool seeInvisible = false;

  List<String> strong = [];

  int summonedMana = 0;

  List<String> weakness = [];

  MainCreature();

  @override
  String toString() {
    return 'MainCreature[beConvinced=$beConvinced, beParalysed=$beParalysed, beSummoned=$beSummoned, behaviour=$behaviour, convincedMana=$convincedMana, description=$description, experiencePoints=$experiencePoints, featured=$featured, hitpoints=$hitpoints, imageUrl=$imageUrl, immune=$immune, isLootable=$isLootable, lootList=$lootList, name=$name, race=$race, seeInvisible=$seeInvisible, strong=$strong, summonedMana=$summonedMana, weakness=$weakness, ]';
  }

  MainCreature.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    beConvinced = json['be_convinced'];
    beParalysed = json['be_paralysed'];
    beSummoned = json['be_summoned'];
    behaviour = json['behaviour'];
    convincedMana = json['convinced_mana'];
    description = json['description'];
    experiencePoints = json['experience_points'];
    featured = json['featured'];
    hitpoints = json['hitpoints'];
    imageUrl = json['image_url'];
    immune = (json['immune'] as List).map((item) => item as String).toList();
    isLootable = json['is_lootable'];
    lootList =
        (json['loot_list'] as List).map((item) => item as String).toList();
    name = json['name'];
    race = json['race'];
    seeInvisible = json['see_invisible'];
    strong = (json['strong'] as List).map((item) => item as String).toList();
    summonedMana = json['summoned_mana'];
    weakness =
        (json['weakness'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'be_convinced': beConvinced,
      'be_paralysed': beParalysed,
      'be_summoned': beSummoned,
      'behaviour': behaviour,
      'convinced_mana': convincedMana,
      'description': description,
      'experience_points': experiencePoints,
      'featured': featured,
      'hitpoints': hitpoints,
      'image_url': imageUrl,
      'immune': immune,
      'is_lootable': isLootable,
      'loot_list': lootList,
      'name': name,
      'race': race,
      'see_invisible': seeInvisible,
      'strong': strong,
      'summoned_mana': summonedMana,
      'weakness': weakness
    };
  }

  static List<MainCreature> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainCreature>[]
        : json.map((value) => MainCreature.fromJson(value)).toList();
  }

  static Map<String, MainCreature> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainCreature>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainCreature.fromJson(value));
    }
    return map;
  }
}
