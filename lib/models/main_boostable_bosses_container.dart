import 'main_overview_boostable_boss.dart';

class MainBoostableBossesContainer {
  List<MainOverviewBoostableBoss> boostableBossList = [];

  MainOverviewBoostableBoss boosted = MainOverviewBoostableBoss();

  MainBoostableBossesContainer();

  @override
  String toString() {
    return 'MainBoostableBossesContainer[boostableBossList=$boostableBossList, boosted=$boosted, ]';
  }

  MainBoostableBossesContainer.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    boostableBossList =
        MainOverviewBoostableBoss.listFromJson(json['boostable_boss_list']);
    boosted = MainOverviewBoostableBoss.fromJson(json['boosted']);
  }

  Map<String, dynamic> toJson() {
    return {'boostable_boss_list': boostableBossList, 'boosted': boosted};
  }

  static List<MainBoostableBossesContainer> listFromJson(List<dynamic>? json) {
    return json == null
        ? <MainBoostableBossesContainer>[]
        : json
            .map((value) => MainBoostableBossesContainer.fromJson(value))
            .toList();
  }

  static Map<String, MainBoostableBossesContainer> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    Map<String, MainBoostableBossesContainer> map = {};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = MainBoostableBossesContainer.fromJson(value));
    }
    return map;
  }
}
