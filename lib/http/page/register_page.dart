import 'package:flutter/material.dart';
import 'package:flutter_bilibili/http/widget/login_input.dart';

import '../widget/appbar.dart';
import '../widget/login_effect.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage();

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool protect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("注册", "登录", () {
        print("123");
      }),
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
              autofocus: true,
              isObscureText: true,
              focusChange: (bool hasFocus) {
                setState(() {
                  if (hasFocus) {
                    protect = true;
                  }
                });
              },
              onChanged: (text) {},
            ),
            LoginInput(
              textInputType: TextInputType.text,
              title: '确认密码',
              hintText: "请确认密码",
              autofocus: true,
              isObscureText: true,
              onChanged: (text) {
                print("onchange text is $text");
              },
              focusChange: (bool hasFocus) {
                setState(() {
                  if (hasFocus) {
                    protect = true;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
