import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:se_challenge/app/infra/adapters/httpClient/http_client.dart';

class HomeController extends GetxController {
  final entries = [].obs;
  TextEditingController usersSearch = TextEditingController();

  search() async {
    final HttpClient httpClient = HttpClient();

    await httpClient
        .request(
            url:
                'https://api.github.com/search/users?q=${this.usersSearch.text}',
            method: 'GET')
        .then((value) {
      this.entries.clear();
      this.entries.value = value.data['items'];
      this.entries.refresh();
    });
  }
}
