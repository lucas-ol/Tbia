import 'dart:convert';

import 'package:http/http.dart';
import 'package:tbia/app/core/api_client.dart';
import 'package:tbia/app/domain/services/guilds/i_guilds_service.dart';

import '../../models/main_guild_response.dart';
import '../../models/main_guilds_overview_response.dart';
import '../../models/exceptions/api_exception.dart';

class GuildsService implements IGuildsService {
  final ApiClient apiClient;

  GuildsService(this.apiClient);

  /// Show one guild
  ///
  /// Show all information about one guild
  @override
  Future<MainGuildResponse> guildNameGet(String name) async {
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
  @override
  Future<MainGuildsOverviewResponse> guildsWorldGet(String world) async {
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
