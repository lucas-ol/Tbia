import 'main_overview_creature.dart';

class MainCreaturesContainer {
  MainOverviewCreature boosted = MainOverviewCreature();

  List<MainOverviewCreature> creatureList = [];

  MainCreaturesContainer();

  @override
  String toString() {
    return 'MainCreaturesContainer[boosted=$boosted, creatureList=$creatureList, ]';
  }

  MainCreaturesContainer.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    boosted = MainOverviewCreature.fromJson(json['boosted']);
    creatureList = MainOverviewCreature.listFromJson(json['creature_list']);
  }

  Map<String, dynamic> toJson() {
    return {'boosted': boosted, 'creature_list': creatureList};
  }

  static List<MainCreaturesContainer> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainCreaturesContainer>[]
        : json.map((value) => MainCreaturesContainer.fromJson(value)).toList();
  }

  static Map<String, MainCreaturesContainer> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = <String, MainCreaturesContainer>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainCreaturesContainer.fromJson(value));
    }
    return map;
  }
}
