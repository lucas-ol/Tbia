import 'dart:convert';

import 'package:http/http.dart';
import 'package:tbia/app/core/api_client.dart';
import 'package:tbia/app/domain/services/houses/i_houses_service.dart';

import '../../models/main_house_response.dart';
import '../../models/main_houses_overview_response.dart';
import '../../models/exceptions/api_exception.dart';

class HousesService implements IHousesService {
  final ApiClient apiClient;

  HousesService(this.apiClient);

  /// House view
  ///
  /// Show all information about one house
  @override
  Future<MainHouseResponse> houseWorldHouseIdGet(
      String world, int houseId) async {
    // verify required params are set
    if (world.isEmpty) {
      throw ApiException(400, "Missing required param: world");
    }
    if (houseId == 0) {
      throw ApiException(400, "Missing required param: houseId");
    }

    // create path and map variables
    String path = "/v3/house/{world}/{house_id}"
        .replaceAll("{format}", "json")
        .replaceAll("{world}", world.toString())
        .replaceAll("{house_id}", houseId.toString());

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainHouseResponse.fromJson(responseBody);
    } else {
      return MainHouseResponse();
    }
  }

  /// List of houses
  ///
  /// Show all houses filtered on world and town
  @override
  Future<MainHousesOverviewResponse> housesWorldTownGet(
      String world, String town) async {
    // verify required params are set
    if (world.isEmpty) {
      throw ApiException(400, "Missing required param: world");
    }
    if (town.isEmpty) {
      throw ApiException(400, "Missing required param: town");
    }

    // create path and map variables
    String path = "/v3/houses/{world}/{town}"
        .replaceAll("{format}", "json")
        .replaceAll("{world}", world.toString())
        .replaceAll("{town}", town.toString());

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainHousesOverviewResponse.fromJson(responseBody);
    } else {
      return MainHousesOverviewResponse();
    }
  }
}
