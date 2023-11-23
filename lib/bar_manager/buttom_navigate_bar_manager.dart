var _homePage = ButtonNavigateBar(index: 0, description: "首页", targetPath: "/");
var _personPage =
    ButtonNavigateBar(index: 1, description: "个人中心", targetPath: "/register");
var _loginPage =
    ButtonNavigateBar(index: 2, description: "登录", targetPath: "/login");

late Map<int, ButtonNavigateBar> _map;

void navigateBarInit() {
  _map = {
    _homePage.index: _homePage,
    _personPage.index: _personPage,
    _loginPage.index: _loginPage,
  };
}

String targetRouter(int index) {
  return _map[index]!.targetPath;
}

class ButtonNavigateBar {
  final int index;
  final String description;
  final String targetPath;

  ButtonNavigateBar(
      {required this.index,
      required this.description,
      required this.targetPath});
}
