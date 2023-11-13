import 'package:flutter_bilibili/http/request/base_request.dart';

class LoginRequest extends BaseRequest {
  @override
  HttpMethod method() {
    return HttpMethod.POST;
  }

  @override
  bool needLogin() {
    return false;
  }

  @override
  String path() {
    return "/uapi/user/login";
  }
}
