import 'package:get_storage/get_storage.dart';
import 'package:meta/meta.dart';

class LocalStorage {
  GetStorage storage = new GetStorage();

  LocalStorage();

  request({
    @required String method,
    @required String prop,
    dynamic data,
  }) {
    var response;

    try {
      if (method == 'READ') {
        response = storage.read(prop);
      } else if (method == 'WRITE') {
        response = storage.write(prop, data);
      }
    } catch (error) {
      return error;
    }

    return response;
  }
}