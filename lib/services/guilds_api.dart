import 'dart:convert';

import 'package:http/http.dart';

import '../core/api_client.dart';
import '../models/main_guild_response.dart';
import '../models/main_guilds_overview_response.dart';
import 'exceptions/api_exception.dart';

class GuildsApi {
  final ApiClient apiClient;

  GuildsApi(this.apiClient);

  /// Show one guild
  ///
  /// Show all information about one guild
  Future<MainGuildResponse> v3GuildNameGet(String name) async {
    // verify required params are set
    if (name.isEmpty) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/v3/guild/$name";
    var req = apiClient.createRequest(path, "GET");

    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainGuildResponse.fromJson(responseBody);
    } else {
      return MainGuildResponse();
    }
  }

  /// List all guilds from a world
  ///
  /// Show all guilds on a certain world
  Future<MainGuildsOverviewResponse> v3GuildsWorldGet(String world) async {
    // verify required params are set
    if (world.isEmpty) {
      throw ApiException(400, "Missing required param: world");
    }

    // create path and map variables
    String path = "/v3/guilds/$world";
    final req = apiClient.createRequest(path, 'GET');

    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainGuildsOverviewResponse.fromJson(responseBody);
    } else {
      return MainGuildsOverviewResponse();
    }
  }
}
