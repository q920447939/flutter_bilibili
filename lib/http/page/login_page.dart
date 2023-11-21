import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bilibili/http/page/register_page.dart';
import 'package:flutter_bilibili/http/widget/appbar.dart';
import 'package:flutter_bilibili/http/widget/login_effect.dart';
import 'package:flutter_bilibili/http/widget/login_input.dart';

import '../widget/login_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool protect = false;
  String? _username;
  String? _password;

  bool allowClickLogin = false;

  bool showLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("密码登陆", "注册", () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => RegisterPage()));
      }),
      body: ListView(
        children: [
          LoginEffect(protect: protect),
          LoginInput(
            textInputType: TextInputType.text,
            title: '用户名',
            hintText: "请输入用户名",
            autofocus: true,
            onChanged: (text) {
              print("onchange text is $text");
              _username = text;
              _adjustAllowClickLogin();
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
              _adjustAllowClickLogin();
            },
          ),
          allowClickLogin
              ? LoginButton(
                  title: '登录',
                  allowClick: true,
                )
              : LoginButton(
                  title: '登录',
                )
        ],
      ),
    );
  }

  void _adjustAllowClickLogin() {
    print("_username is $_username");
    if (ObjectUtil.isNotEmpty(_username) && ObjectUtil.isNotEmpty(_password)) {
      allowClickLogin = true;
    } else {
      allowClickLogin = false;
    }
    setState(() {});
  }
}
