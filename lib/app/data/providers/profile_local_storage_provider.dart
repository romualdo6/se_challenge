import 'dart:convert';

import 'package:se_challenge/app/infra/adapters/localStorage/local_storage.dart';

class ProfileLocalStorageProvider {
  final LocalStorage storage = LocalStorage();

  handleFavoriteSave(args) {
    var data = storage.request(method: 'READ', prop: 'data');

    data == null ? data = args : data = data + ',' + args;

    storage.request(method: 'WRITE', prop: 'data', data: data);
  }
}
