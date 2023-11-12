import 'package:flutter_bilibili/http/request/base_request.dart';

class TestRequest extends BaseRequest {
  @override
  HttpMethod method() {
    return HttpMethod.GET;
  }

  @override
  bool needLogin() {
    return false;
  }

  @override
  String path() {
    return "/uapi/test/test";
  }
}
