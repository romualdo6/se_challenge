import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:se_challenge/app/modules/profile/profile_controller.dart';

class ProfileView extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments as Map;

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
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Center(
                  child: Container(
                      height: 150,
                      width: 150,
                      child: Image.network(args['avatar_url']))),
              SizedBox(
                height: 5,
              ),
              args['local'] == null
                  ? Text('Local: Não possui')
                  : Text("Local: " + args['location']),
              SizedBox(
                height: 5,
              ),
              args['bio'] == null
                  ? Text('Bio: Não possui')
                  : Text('Bio: ' + args['bio']),
              SizedBox(
                height: 5,
              ),
              args['login'] == null
                  ? Text('Login: Não possui')
                  : Text("Nickname(Login): " + args['login']),
              SizedBox(
                height: 5,
              ),
              args['email'] == null
                  ? Text('Email: Não possui')
                  : Text('Email: ' + args['email']),
              SizedBox(
                height: 5,
              ),
              OutlinedButton(
                onPressed: () => controller.handleFavoriteSave(args),
                child: Text("Favoritar Perfil"),
                //size: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
