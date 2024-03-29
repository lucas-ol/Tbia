import 'dart:convert';

import 'package:http/http.dart';

import '../core/api_client.dart';
import '../models/main_news_list_response.dart';
import '../models/main_news_response.dart';
import 'exceptions/api_exception.dart';

class NewsApi {
  final ApiClient apiClient;

  NewsApi(this.apiClient);

  /// Show news archive (with days filter)
  ///
  /// Show news archive with a filtering option on days
  Future<MainNewsListResponse> v3NewsArchiveDaysGet(int days) async {
    // verify required params are set
    if (days == 0) {
      throw ApiException(400, "Missing required param: days");
    }

    // create path and map variables
    String path =
        "/v3/news/archive/{days}".replaceAll("{days}", days.toString());

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainNewsListResponse.fromJson(responseBody);
    } else {
      return MainNewsListResponse();
    }
  }

  /// Show news archive (90 days)
  ///
  /// Show news archive with a filtering on 90 days
  Future<MainNewsListResponse> v3NewsArchiveGet() async {
    // verify required params are set

    // create path and map variables
    String path = "/v3/news/archive";

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainNewsListResponse.fromJson(responseBody);
    } else {
      return MainNewsListResponse();
    }
  }

  /// Show one news entry
  ///
  /// Show one news entry
  Future<MainNewsResponse> v3NewsIdNewsIdGet(int newsId) async {
    // verify required params are set
    if (newsId == 0) {
      throw ApiException(400, "Missing required param: newsId");
    }

    // create path and map variables
    String path = "/v3/news/id/$newsId";

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainNewsResponse.fromJson(responseBody);
    } else {
      return MainNewsResponse();
    }
  }

  /// Show newslist (90 days)
  ///
  /// Show newslist with filtering on articles and news of last 90 days
  Future<MainNewsListResponse> v3NewsLatestGet() async {
    // verify required params are set

    // create path and map variables
    String path = "/v3/news/latest";

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainNewsListResponse.fromJson(responseBody);
    } else {
      return MainNewsListResponse();
    }
  }

  /// Show news tickers (90 days)
  ///
  /// Show news of type news tickers of last 90 days
  Future<MainNewsListResponse> v3NewsNewstickerGet() async {
    // verify required params are set

    // create path and map variables
    String path = "/v3/news/newsticker";

    final req = apiClient.createRequest(path, 'GET');
    var stream = await apiClient.send(req);

    var response = await Response.fromStream(stream);

    final Map<String, dynamic> responseBody = json.decode(response.body);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    } else if (responseBody.isNotEmpty) {
      return MainNewsListResponse.fromJson(responseBody);
    } else {
      return MainNewsListResponse();
    }
  }
}
