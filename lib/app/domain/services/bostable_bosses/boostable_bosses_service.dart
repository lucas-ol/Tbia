import 'dart:convert';
import 'package:tbia/app/core/api_client.dart';
import 'package:tbia/app/domain/services/bostable_bosses/i_boostable_bosses_service.dart';

import '../../models/main_boostable_bosses_overview_response.dart';
import '../../models/exceptions/api_exception.dart';

class BoostableBossesService implements IBoostableBossesService {
  final ApiClient apiClient;

  BoostableBossesService(this.apiClient);

  /// List of boostable bosses
  /// Show all boostable bosses listed
  @override
  Future<MainBoostableBossesOverviewResponse> boostablebossesGet() async {
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
