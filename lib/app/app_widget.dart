import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:se_challenge/app/modules/home/home_view.dart';
import 'package:se_challenge/app/routes/app_routes.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes,
      home: HomeView(),
    );
  }
}
