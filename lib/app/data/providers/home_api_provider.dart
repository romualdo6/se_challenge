import 'package:se_challenge/app/infra/adapters/httpClient/http_client.dart';

class HomeApiProvider {
  final HttpClient httpClient = HttpClient();

  handleSearch(String text) async {
    var response = await httpClient
        .request(
            url: 'https://api.github.com/search/users?q=${text}', method: 'GET')
        .then((value) {
      return value.data['items'];
    });

    return response;
  }
}
