import 'dart:developer';

import 'package:flutter_bilibili/http/request/base_request.dart';

class HiNet {
  static late HiNet _instance = HiNet._();

  HiNet._() {
    // no access to _instance here
  }

  static HiNet getInstance() {
    return _instance;
  }

  Future fire(BaseRequest baseRequest) async {
    var response = await send(baseRequest);
    var data = response['data111'];
    log("data is $data");
  }

  Future<dynamic> send<T>(BaseRequest baseRequest) async {
    baseRequest.addHead("token", "111");
    baseRequest.add("param1", "value1");

    return Future.value({
      "data": "data",
    });
  }
}
