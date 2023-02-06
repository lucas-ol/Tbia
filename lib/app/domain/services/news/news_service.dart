import 'dart:convert';

import 'package:http/http.dart';
import 'package:tbia/app/core/api_client.dart';
import 'package:tbia/app/domain/services/news/i_news_service.dart';

import '../../models/main_news_list_response.dart';
import '../../models/main_news_response.dart';
import '../../models/exceptions/api_exception.dart';

class NewsService implements INewsService {
  final ApiClient apiClient;

  NewsService(this.apiClient);

  /// Show news archive (with days filter)
  ///
  /// Show news archive with a filtering option on days
  @override
  Future<MainNewsListResponse> newsArchiveDaysGet(int days) async {
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
  @override
  Future<MainNewsListResponse> newsArchiveGet() async {
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
  @override
  Future<MainNewsResponse> newsIdNewsIdGet(int newsId) async {
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
  @override
  Future<MainNewsListResponse> newsLatestGet() async {
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
  @override
  Future<MainNewsListResponse> newsNewstickerGet() async {
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
