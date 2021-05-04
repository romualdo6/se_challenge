import 'package:se_challenge/app/infra/adapters/httpClient/http_client.dart';
import 'package:test/test.dart';

void main() {
  test('ensure HttpClient Adapter is working',
      () async {
    final HttpClient httpClient = HttpClient();

    var response = await httpClient
        .request(
            url: 'https://api.github.com/search/users?q=romualdo',
            method: 'GET')
        .then((value) {

      return value;
    });


    expect(response.statusCode, 200);
  });
}
