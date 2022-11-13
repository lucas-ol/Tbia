import 'dart:convert';

import 'package:http/http.dart';

import '../core/api_client.dart';
import '../models/main_fansites_response.dart';
import 'exceptions/api_exception.dart';

class FansitesApi {
  final ApiClient apiClient;

  FansitesApi(this.apiClient);

  /// Promoted and supported fansites
  ///
  /// List of all promoted and supported fansites
  Future<MainFansitesResponse> v3FansitesGet() async {
    // verify required params are set

    // create path and map variables
    String path = "/v3/fansites".replaceAll("{format}", "json");

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainFansitesResponse.fromJson(responseBody);
    } else {
      return MainFansitesResponse();
    }
  }
}
