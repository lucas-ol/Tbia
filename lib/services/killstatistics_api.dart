import 'dart:convert';

import 'package:http/http.dart';

import '../core/api_client.dart';
import '../models/main_kill_statistics_response.dart';
import 'exceptions/api_exception.dart';

class KillstatisticsApi {
  final ApiClient apiClient;

  KillstatisticsApi(this.apiClient);

  /// The killstatistics
  ///
  /// Show all killstatistics filtered on world
  Future<MainKillStatisticsResponse> v3KillstatisticsWorldGet(
      String world) async {
    // verify required params are set
    if (world.isEmpty) {
      throw ApiException(400, "Missing required param: world");
    }

    // create path and map variables
    String path = "/v3/killstatistics/$world";

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainKillStatisticsResponse.fromJson(responseBody);
    } else {
      return MainKillStatisticsResponse();
    }
  }
}
