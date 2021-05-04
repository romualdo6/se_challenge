import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

class HttpClient {
  Dio client = new Dio();

  HttpClient();

  request({@required String url, @required String method, dynamic data}) async {
    var response;

    try {
      if (method == 'POST') {
        response = await client.post(url, data: data);
      } else if (method == 'GET') {
        response = await client.get(url);
      } else if (method == 'PUT') {
        response = await client.put(url, data: data);
      }
    } catch (error) {
      Get.defaultDialog(
          title: "Alerta",
          textCancel: "OK?",
          onCancel: () => Get.back(),
          content: Text(
              "Esta ocorrendo algo ao tentar requisitar os dados, verifique sua conexão!"));
      return error;
    }
    return response;
  }
}
