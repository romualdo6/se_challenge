import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:se_challenge/app/data/repository/home_repositoy.dart';

class HomeController extends GetxController {
  final HomeRepository homeRepository = new HomeRepository();

  final entries = [].obs;
  TextEditingController usersSearch = TextEditingController();

  handleSearch() async {
    homeRepository.handleSearch(this.usersSearch.text).then((value) {
      this.entries.clear();
      this.entries.value = value;
      this.entries.refresh();
    });
  }

  handleViewProfile(url) {
    homeRepository.handleViewProfile(url).then((value) {
      Get.toNamed('/Profile', arguments: value);
    });
  }
}
