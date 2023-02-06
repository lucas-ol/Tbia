import 'dart:convert';
import 'package:http/http.dart';
import 'package:tbia/app/core/api_client.dart';
import 'package:tbia/app/domain/services/characters/i_characters_service.dart';

import '../../models/main_character_response.dart';
import '../../models/exceptions/api_exception.dart';

class CharactersService implements ICharactersService {
  final ApiClient apiClient;

  CharactersService(this.apiClient);

  /// Show one character
  ///
  /// Show all information about one character available
  @override
  Future<MainCharacterResponse> characterNameGet(String name) async {
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
