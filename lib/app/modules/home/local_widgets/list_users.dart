import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_controller.dart';

class ListUsers extends StatelessWidget {
  ListUsers();

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.entries.length == 0) {
        return Center(
            child: Text("Digite algo e clique na lupa para pesquisar."));
      } else {
        return Container(
          child: ListView.builder(
            padding: const EdgeInsets.all(5),
            itemCount: controller.entries.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  TextButton(
                    onPressed: () => controller.handleViewProfile(controller.entries[index]['url']),
                    child: ListTile(
                      leading: Image.network(
                          controller.entries[index]['avatar_url']),
                      title: Text('${controller.entries[index]['login']}'),
                    ),
                  ),
                  Divider()
                ],
              );
            },
          ),
          color: Colors.white,
        );
      }
    });
  }
}
/*


Widget teste() {
  return ListView.separated(
    padding: const EdgeInsets.all(8),
    itemCount: controller.entries.length,
    itemBuilder: (BuildContext context, int index) {
      print(jsonEncode(controller.entries[index]).runtimeType);



      return Card(
        child: ListTile(
          leading: FlutterLogo(size: 72.0),
          title: Text('${controller.entries[index]}'),

        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
  );
}*/
