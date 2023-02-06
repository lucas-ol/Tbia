import 'package:tbia/app/domain/models/main_boostable_bosses_overview_response.dart';

abstract class IBoostableBossesService {
  Future<MainBoostableBossesOverviewResponse> boostablebossesGet();
}
