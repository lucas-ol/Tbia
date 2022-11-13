import 'dart:convert';
import 'package:http/http.dart';

import '../core/api_client.dart';
import '../models/main_creature_response.dart';
import '../models/main_creatures_overview_response.dart';
import 'exceptions/api_exception.dart';

class CreaturesApi {
  final ApiClient apiClient;

  CreaturesApi(this.apiClient);

  /// Show one creature
  ///
  /// Show all information about one creature
  Future<MainCreatureResponse> v3CreatureRaceGet(String race) async {
    // verify required params are set
    if (race.isEmpty) {
      throw ApiException(400, "Missing required param: race");
    }

    // create path and map variables
    String path = "/v3/creature/$race";

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.toString());
    } else if (responseBody.isNotEmpty) {
      return MainCreatureResponse.fromJson(responseBody);
    } else {
      return MainCreatureResponse();
    }
  }

  /// List of creatures
  ///
  /// Show all creatures listed
  Future<MainCreaturesOverviewResponse> v3CreaturesGet() async {
    // create path and map variables
    String path = "/v3/creatures".replaceAll("{format}", "json");

    var req = apiClient.createRequest(path, 'GET');

    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainCreaturesOverviewResponse.fromJson(responseBody);
    } else {
      return MainCreaturesOverviewResponse();
    }
  }
}
