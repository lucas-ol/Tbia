import 'dart:convert';
import 'package:http/http.dart';

import '../core/api_client.dart';
import '../models/main_character_response.dart';
import 'exceptions/api_exception.dart';

class CharactersApi {
  final ApiClient apiClient;

  CharactersApi(this.apiClient);

  /// Show one character
  ///
  /// Show all information about one character available
  Future<MainCharacterResponse> v3CharacterNameGet(String name) async {
    // verify required params are set
    if (name.isEmpty) {
      throw ApiException(400, "Missing required param: name");
    }

    // create path and map variables
    String path = "/v3/character/$name";

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainCharacterResponse.fromJson(responseBody);
    } else {
      return MainCharacterResponse();
    }
  }
}
