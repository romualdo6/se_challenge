import 'package:se_challenge/app/data/providers/home_api_provider.dart';

class HomeRepository {

  final HomeApiProvider homeProvider = new HomeApiProvider();

  handleSearch(String text) async {
    return await homeProvider.handleSearch(text);
  }



}
