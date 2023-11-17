import 'dart:developer';

import 'package:flutter_bilibili/http/core/dio_hi_net_adapter.dart';
import 'package:flutter_bilibili/http/core/hi_net_response.dart';
import 'package:flutter_bilibili/http/request/base_request.dart';

import 'hi_error.dart';

class HiNet {
  static late HiNet _instance = HiNet._();

  HiNet._() {
    // no access to _instance here
  }

  static HiNet getInstance() {
    return _instance;
  }

  Future<HiNetResponse> fire(BaseRequest baseRequest) async {
    HiNetResponse? response;
    try {
      response = await send(baseRequest);
    } catch (e) {
      if (e is HiNetError) {
        log("occur HinNet business error , code is ${e.code} , msg is ${e.msg}");
        var hiNetResponse =
            HiNetResponse(statusCode: e.code, statusMessage: e.msg);
        return hiNetResponse;
      } else {
        log("occur system error $e");
        var hiNetResponse =
            HiNetResponse(statusCode: -1, statusMessage: e.toString());
        return hiNetResponse;
      }
    }
    int statusCode = response.statusCode!;

    switch (statusCode) {
      case 200:
        return response.data;
      case 401:
        throw NoLoginError();
      case 403:
        throw NeedAuthError();
      default:
        throw HiNetError(code: statusCode, msg: response.statusMessage ?? "");
    }
  }

  Future<HiNetResponse> send<T>(BaseRequest baseRequest) async {
    baseRequest.addHead("token", "111");
    baseRequest.add("param1", "value1");
    return await DioHiNetAdapter().send(baseRequest);
  }
}
