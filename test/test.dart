import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:se_challenge/app/infra/adapters/httpClient/http_client.dart';
import 'package:se_challenge/app/infra/adapters/localStorage/local_storage.dart';
import 'package:test/test.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  test('ensure HttpClient Adapter is working', () async {
    final HttpClient httpClient = HttpClient();

    var response = await httpClient
        .request(
            url: 'https://api.github.com/search/users?q=romualdo',
            method: 'GET')
        .then((value) {
      return value;
    });

    expect(response.statusCode, 200);
  });

  test('ensure LocalStorage Adapter is working READ method', () async {
    final LocalStorage storage = LocalStorage();

    var response = await storage.request(method: 'READ', prop: 'test');

    expect(response, null);
  });

  test('ensure LocalStorage Adapter is working WRITE method', () async {
    final LocalStorage storage = LocalStorage();

    var response = await storage
        .request(method: 'WRITE', prop: 'test', data: 'Isto é um teste')
        .then((value) {
      return value;
    });

    expect(response, null);
  });
}
