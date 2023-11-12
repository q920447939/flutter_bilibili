import 'dart:developer';

enum HttpMethod { GET, POST, PUT, DELETE }

abstract class BaseRequest {
  var pathParams;
  var useHttps = true;

  String authority() {
    return "bilibili.com";
  }

  HttpMethod method();

  String path();

  String url() {
    Uri uri;
    var pathStr = path();
    if (null != pathParams) {
      if (pathStr.endsWith("/")) {
        pathStr = "$pathStr$pathParams";
      } else {
        pathStr = "$pathStr/$pathParams";
      }
    }
    if (useHttps) {
      uri = Uri.https(authority(), pathStr, params);
    } else {
      uri = Uri.http(authority(), pathStr, params);
    }
    log(uri.toString());
    return uri.toString();
  }

  bool needLogin();

  Map<String, String> params = Map();

  BaseRequest add(String k, Object v) {
    params[k] = v.toString();
    return this;
  }

  Map<String, dynamic> head = Map();

  BaseRequest addHead(String k, Object v) {
    head[k] = v.toString();
    return this;
  }
}
