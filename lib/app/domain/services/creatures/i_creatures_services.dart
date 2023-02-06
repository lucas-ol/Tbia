import 'package:tbia/app/domain/models/main_creature_response.dart';
import 'package:tbia/app/domain/models/main_creatures_overview_response.dart';

abstract class ICreaturesService {
  Future<MainCreatureResponse> creatureRaceGet(String race);
  Future<MainCreaturesOverviewResponse> creaturesGet();
}
