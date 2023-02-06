import 'dart:convert';

import 'package:http/http.dart';
import 'package:tbia/app/core/api_client.dart';
import 'package:tbia/app/domain/services/spells/i_spells_service.dart';

import '../../models/main_spell_information_response.dart';
import '../../models/main_spells_overview_response.dart';
import '../../models/exceptions/api_exception.dart';

class SpellsService implements ISpellsService {
  final ApiClient apiClient;

  SpellsService(this.apiClient);

  /// Show one spell
  ///
  /// Show all information about one spell
  @override
  Future<MainSpellInformationResponse> spellSpellIdGet(String spellId) async {
    // verify required params are set
    if (spellId.isNotEmpty) {
      throw ApiException(400, "Missing required param: spellId");
    }

    // create path and map variables
    String path =
        "/v3/spell/{spell_id}".replaceAll("{spell_id}", spellId.toString());

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainSpellInformationResponse.fromJson(responseBody);
    } else {
      return MainSpellInformationResponse();
    }
  }

  /// List all spells
  ///
  /// Show all spells
  @override
  Future<MainSpellsOverviewResponse> spellsGet() async {
    // verify required params are set

    // create path and map variables
    String path = "/v3/spells".replaceAll("{format}", "json");

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainSpellsOverviewResponse.fromJson(responseBody);
    } else {
      return MainSpellsOverviewResponse();
    }
  }
}
