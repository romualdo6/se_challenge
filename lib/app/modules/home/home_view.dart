import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:se_challenge/app/modules/home/home_controller.dart';
import 'package:se_challenge/app/modules/home/local_widgets/list_users.dart';

import '../../utils/global_widgets/text_form_field.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SE Challenge',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
              onPressed: () => {},
              child: Text("Favoritos"),
            ),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SeChallengeTextFormField(
                  controller: controller.usersSearch,
                  hintText: "Digite o nome do usuário",
                  borderColor: Colors.grey,
                  icon: Icon(Icons.supervised_user_circle_sharp),
                  suffixIcon: Icon(Icons.search),
                  colorIcon: Colors.grey,
                  keyboardType: TextInputType.text,
                  suffixIconPress: () => controller.handleSearch(),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 5,
              ),
              Expanded(child: ListUsers())
            ],
          ),
        ),
      ),
    );
  }
}
