import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:thoughts_creator/utils/ApiUtils.dart';

class RequestApi {
  String url;
  dynamic body;

  RequestApi({this.url, this.body});

  Future<http.Response> post() {
    Logger logger = Logger();
    logger.v("URL in post: $url");
    return http
        .post(
          ApiUtils.urlBase + url,
          body: body,
        )
        .timeout(Duration(minutes: 2));
  }

  Future<http.Response> get() {
    Logger logger = Logger();
    logger.v("URL in GET: $url");
    return http
        .get(
          ApiUtils.urlBase + url,
        )
        .timeout(Duration(minutes: 2));
  }

  Future<http.Response> popularPost() {
    Logger logger = Logger();
    logger.v("URL in popularpost: ${ApiUtils.urlBase}$url");
    return http
        .get(
          ApiUtils.urlBase + url,
        )
        .timeout(Duration(minutes: 2));
  }
}
