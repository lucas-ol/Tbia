import 'dart:convert';

import 'package:http/http.dart';

import '../core/api_client.dart';
import '../models/main_world_response.dart';
import '../models/main_worlds_overview_response.dart';
import 'exceptions/api_exception.dart';

class WorldsApi {
  final ApiClient apiClient;

  WorldsApi(this.apiClient);

  /// Show one world
  ///
  /// Show all information about one world
  Future<MainWorldResponse> v3WorldNameGet(String name) async {
    // verify required params are set
    if (name.isEmpty) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/v3/world/$name";

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainWorldResponse.fromJson(responseBody);
    } else {
      return MainWorldResponse();
    }
  }

  /// List of all worlds
  ///
  /// Show all worlds of Tibia
  Future<MainWorldsOverviewResponse> v3WorldsGet() async {
    // verify required params are set

    // create path and map variables
    String path = "/v3/worlds".replaceAll("{format}", "json");

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainWorldsOverviewResponse.fromJson(responseBody);
    } else {
      return MainWorldsOverviewResponse();
    }
  }
}
