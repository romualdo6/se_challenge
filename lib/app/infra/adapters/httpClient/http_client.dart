import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

class HttpClient {
  Dio client = new Dio();

  HttpClient();

  request(
      {@required String url,
      @required String method,
      dynamic data,
      bool useInterceptors}) async {
    var futureResponse;

    try {
      if (method == 'POST') {
        futureResponse = await client.post(url, data: data);
      } else if (method == 'GET') {
        futureResponse = await client.get(url);
      } else if (method == 'PUT') {
        futureResponse = await client.put(url, data: data);
      }
    } catch (error) {
      return error;
    }

    return futureResponse;
  }
}
