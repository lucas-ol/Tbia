import 'dart:convert';

import 'package:http/http.dart';
import 'package:tbia/app/core/api_client.dart';
import 'package:tbia/app/domain/services/highscores/i_highscores_service.dart';

import '../../models/main_highscores_response.dart';
import '../../models/exceptions/api_exception.dart';

class HighscoresService implements IHighscoresService {
  final ApiClient apiClient;

  HighscoresService(this.apiClient);

  /// Highscores of tibia
  ///
  /// Show all highscores of tibia
  @override
  Future<MainHighscoresResponse> highscoresWorldCategoryVocationPageGet(
      String world, String category, String vocation, int page) async {
    // verify required params are set
    if (world.isEmpty) {
      throw ApiException(400, "Missing required param: world");
    }
    if (category.isEmpty) {
      throw ApiException(400, "Missing required param: category");
    }
    if (vocation.isEmpty) {
      throw ApiException(400, "Missing required param: vocation");
    }
    if (page == 0) {
      throw ApiException(400, "Missing required param: page");
    }

    // create path and map variables
    String path = "/v3/highscores/{world}/{category}/{vocation}/{page}"
        .replaceAll("{format}", "json")
        .replaceAll("{world}", world.toString())
        .replaceAll("{category}", category.toString())
        .replaceAll("{vocation}", vocation.toString())
        .replaceAll("{page}", page.toString());

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainHighscoresResponse.fromJson(responseBody);
    } else {
      return MainHighscoresResponse();
    }
  }
}
