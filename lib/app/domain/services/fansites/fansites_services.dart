import 'dart:convert';

import 'package:http/http.dart';
import 'package:tbia/app/core/api_client.dart';
import 'package:tbia/app/domain/services/fansites/i_fansites_services.dart';

import '../../models/main_fansites_response.dart';
import '../../models/exceptions/api_exception.dart';

class FansitesService implements IFansitesService {
  final ApiClient apiClient;

  FansitesService(this.apiClient);

  /// Promoted and supported fansites
  ///
  /// List of all promoted and supported fansites
  @override
  Future<MainFansitesResponse> fansitesGet() async {
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
