import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:se_challenge/app/data/repository/profile_repository.dart';

class ProfileController extends GetxController {
  final ProfileRepository profileRepository = new ProfileRepository();

  handleFavoriteSave(Map args) {
    profileRepository.handleFavoriteSave(json.encode(args));
    Get.defaultDialog(
        title: "Alerta",
        textConfirm: "OK?",
        onConfirm: () => Get.back(),
        content: Text("Usuário Favoritado com sucesso"));
  }
}
