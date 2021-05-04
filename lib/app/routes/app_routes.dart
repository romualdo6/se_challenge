import 'package:get/get.dart';
import 'package:se_challenge/app/modules/home/home_view.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => HomeView()),
  ];
}
