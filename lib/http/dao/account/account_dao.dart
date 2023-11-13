import '../../core/hi_net.dart';
import '../../request/login_request.dart';
import '../../request/register_request.dart';

class AccountDao {
  static Future login(String userName, String passWord) async {
    return await HiNet.getInstance().fire(
        LoginRequest().add("userName", userName).add("passWord", passWord));
  }

  static Future register(
    String userName,
    String passWord, {
    String courseFlag = "fa",
    String imoocId = "",
    String orderId = "",
  }) async {
    return await HiNet.getInstance().fire(RegisterRequest()
        .addHead("course-flag", courseFlag)
        .add("userName", userName)
        .add("passWord", passWord)
        .add("imoocId", imoocId)
        .add("orderId", orderId));
  }
}
