import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bilibili/http/widget/login_input.dart';

import '../widget/appbar.dart';
import '../widget/loading.dart';
import '../widget/login_effect.dart';

class RegisterPage extends StatefulWidget {
  VoidCallback? jumpToLogin;

  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool protect = false;
  String? _username;
  String? _password;
  String? _rePassword;
  int? code = -9999;
  bool allowClickRegister = false;

  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("注册", "登录", widget.jumpToLogin),
      body: Container(
        child: ListView(
          children: [
            LoginEffect(
              protect: protect,
            ),
            LoginInput(
              textInputType: TextInputType.text,
              title: '用户名',
              hintText: "请输入用户名",
              autofocus: true,
              onChanged: (text) {
                print("onchange text is $text");
                _username = text;
                _adjustAllowClickRegister();
              },
              focusChange: (bool hasFocus) {
                setState(() {
                  if (hasFocus) {
                    protect = false;
                  }
                });
              },
            ),
            LoginInput(
              textInputType: TextInputType.text,
              title: '密码',
              hintText: "请输入密码",
              autofocus: false,
              isObscureText: true,
              focusChange: (bool hasFocus) {
                setState(() {
                  if (hasFocus) {
                    protect = true;
                  }
                });
              },
              onChanged: (text) {
                print("onchange text is $text");
                _password = text;
                _adjustAllowClickRegister();
              },
            ),
            LoginInput(
              textInputType: TextInputType.text,
              title: '确认密码',
              hintText: "请确认密码",
              autofocus: false,
              isObscureText: true,
              onChanged: (text) {
                print("onchange text is $text");
                _rePassword = text;
                _adjustAllowClickRegister();
              },
              focusChange: (bool hasFocus) {
                setState(() {
                  if (hasFocus) {
                    protect = true;
                  }
                });
              },
            ),
            LoginInput(
              textInputType: TextInputType.number,
              title: '标识码',
              hintText: "请输入标识码",
              autofocus: false,
              isObscureText: true,
              onChanged: (text) {
                print("onchange text is $text");
                var tryParse = int.tryParse(text);
                if (null != tryParse) {
                  code = tryParse;
                  _adjustAllowClickRegister();
                } else {
                  //tip
                }
              },
              focusChange: (bool hasFocus) {
                setState(() {
                  if (hasFocus) {
                    protect = true;
                  }
                });
              },
            ),
            _buildRegisterButton(),
          ],
        ),
      ),
    );
  }

  void _adjustAllowClickRegister() {
    print("_username is $_username");
    if (ObjectUtil.isNotEmpty(_username) &&
        ObjectUtil.isNotEmpty(_password) &&
        ObjectUtil.isNotEmpty(_rePassword) &&
        code != -9999 &&
        _password == _rePassword &&
        code! > 0) {
      setState(() {
        allowClickRegister = true;
      });
    }
  }

  Padding _buildRegisterButton() {
    return Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: allowClickRegister
            ? _buildRegisterButtonInkWell()
            : IgnorePointer(
                child: _buildRegisterButtonInkWell(),
              ));
  }

  Widget _buildRegisterButtonInkWell() {
    return InkWell(
      onTap: () {
        if (!showLoading) {
          setState(() {
            showLoading = true;
          });
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Loading(
                onClose: () {
                  setState(() {
                    showLoading = false;
                    if (null != widget.jumpToLogin) {
                      widget.jumpToLogin!();
                    }
                  });
                },
                duration: const Duration(seconds: 1),
              );
            },
          );
        }
      },
      child: Ink(
        height: 40,
        color: allowClickRegister ? Colors.red[300] : Colors.red[100],
        child: Center(
          child: Text(
            '注册',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
