import 'dart:convert';
import '../core/api_client.dart';
import '../models/main_boostable_bosses_overview_response.dart';
import 'exceptions/api_exception.dart';

class BoostableBossesApi {
  final ApiClient apiClient;

  BoostableBossesApi(this.apiClient);

  /// List of boostable bosses
  /// Show all boostable bosses listed
  Future<MainBoostableBossesOverviewResponse> v3BoostablebossesGet() async {
    String path = "/v3/boostablebosses";

    var request = apiClient.createRequest(
      path,
      "GET",
    );

    var response = await apiClient.send(request);
    var decodedResponse =
        (json.decode(json.encode(response.stream)) as Map<String, Object>);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, "");
    } else if (decodedResponse.isNotEmpty) {
      return MainBoostableBossesOverviewResponse.fromJson(decodedResponse);
    } else {
      return MainBoostableBossesOverviewResponse();
    }
  }
}
