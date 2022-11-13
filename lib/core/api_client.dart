import 'package:http/http.dart';

class ApiClient extends BaseClient {
  final String baseUrl;
  final Client _inner;

  ApiClient(this.baseUrl) : _inner = Client();

  static String _createQueryParameter(Map<String, Object> queryParams) {
    var ps = queryParams.keys
        .where((element) => queryParams[element] != null)
        .map((p) =>
            '${Uri.encodeComponent(p)}=${Uri.encodeComponent(queryParams[p].toString())}');

    return ps.isNotEmpty ? '?${ps.join('&')}' : '';
  }

  Request createRequest(String path, String method,
      {String contentType = "application/json",
      Map<String, Object>? queryParams,
      Map<String, Object>? body}) {
    if (queryParams != null && queryParams.isEmpty) {
      path += _createQueryParameter(queryParams);
    }
    Request request = Request(method, Uri.parse(baseUrl + path));

    return request;
  }

  @override
  Future<StreamedResponse> send(BaseRequest request) {
    return _inner.send(request);
  }
}
