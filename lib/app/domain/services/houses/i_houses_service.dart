import 'package:tbia/app/domain/models/main_house_response.dart';
import 'package:tbia/app/domain/models/main_houses_overview_response.dart';

abstract class IHousesService {
  Future<MainHouseResponse> houseWorldHouseIdGet(String world, int houseId);
  Future<MainHousesOverviewResponse> housesWorldTownGet(
      String world, String town);
}
