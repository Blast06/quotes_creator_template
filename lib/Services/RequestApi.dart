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
    Uri postUrl = Uri.parse(ApiUtils.urlBase + url);

    return http
        .post(
          postUrl,
          body: body,
        )
        .timeout(Duration(minutes: 2));
  }

  Future<http.Response> get() {
    Logger logger = Logger();
    logger.v("URL in GET: $url");
    Uri response = Uri.parse(ApiUtils.urlBase + url);

    return http
        .get(
          response,
        )
        .timeout(Duration(minutes: 2));
  }

  Future<http.Response> popularPost() {
    Logger logger = Logger();
    logger.v("URL in popularpost: ${ApiUtils.urlBase}$url");
    Uri urlPopularPost = Uri.parse(ApiUtils.urlBase + url);
    return http.get(urlPopularPost).timeout(Duration(minutes: 2));
  }
}
