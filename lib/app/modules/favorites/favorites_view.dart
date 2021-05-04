import 'dart:convert';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:se_challenge/app/infra/adapters/localStorage/local_storage.dart';
import 'package:se_challenge/app/modules/home/home_controller.dart';

class FavoritesView extends StatelessWidget {
  final LocalStorage storage = LocalStorage();
  final HomeController controller = Get.put(HomeController());
  var data;

  @override
  Widget build(BuildContext context) {
    storage.request(method: 'READ', prop: 'data') == null
        ? data = []
        : data = jsonDecode(
            '[' + storage.request(method: 'READ', prop: 'data') + ']');

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'Favorites',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                TextButton(
                  onPressed: () =>
                      Get.toNamed('/Profile', arguments: data[index]),
                  child: ListTile(
                    leading: Image.network(
                      data[index]['avatar_url'],
                      errorBuilder: (BuildContext context, Object exception,
                          StackTrace stackTrace) {
                        return Icon(
                          Icons.supervised_user_circle_sharp,
                          size: 70,
                          color: Colors.grey,
                        );
                      },
                    ),
                    title: Text('${data[index]['login']}'),
                  ),
                ),
                Divider()
              ],
            );

            return new Card(
              child: new Text(data[index]['login']),
            );
          },
        ),
      ),
    );
  }
}
