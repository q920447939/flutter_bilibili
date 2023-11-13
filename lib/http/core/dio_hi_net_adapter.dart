import 'dart:convert';

import 'package:flutter_bilibili/http/core/hi_error.dart';
import 'package:flutter_bilibili/http/request/base_request.dart';

import 'hi_net_response.dart';
import 'package:dio/dio.dart';

class DioHiNetAdapter extends HiNetAdapter {
  @override
  Future<HiNetResponse<T>> send<T>(BaseRequest request) async {
    var options = Options(headers: request.head);
    var response;
    try {
      if (request.method() == HttpMethod.GET) {
        return await Dio().get(request.url(), options: options).then((result) {
          // result = jsonDecode(result);
          /* print(
              "result statusCode is ${result.statusCode} , msg is ${result.statusMessage} , data is ${result.data}");*/
          return HiNetResponse(
              data: result.data,
              baseRequest: request,
              statusCode: result.statusCode,
              statusMessage: result.statusMessage);
        });
      } else {
        return await Dio()
            .post(request.url(),
                options: options, data: jsonEncode(request.params))
            .then((result) {
          return HiNetResponse(
              data: result.data,
              baseRequest: request,
              statusCode: result.statusCode,
              statusMessage: result.statusMessage);
        });
      }
    } on DioException catch (e) {
      throw HiNetError(code: e.response?.statusCode ?? -1, msg: e.toString());
    }
  }

  _buildData(Response response, BaseRequest request) {
    return HiNetResponse(
        data: response.data ?? "",
        baseRequest: request,
        statusCode: response.statusCode,
        statusMessage: response.statusMessage,
        extra: response.extra);
  }
}
