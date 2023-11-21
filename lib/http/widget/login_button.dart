import 'package:flutter/material.dart';

import 'loading.dart';

class LoginButton extends StatefulWidget {
  String title;
  bool allowClick;
  Future? future;

  LoginButton({required this.title, this.allowClick = false, this.future});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      //撑满宽度
      widthFactor: 1,
      child: _buildButton(),
    );
  }

  Padding _buildButton() {
    return Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 20),
        child: widget.allowClick
            ? _buildButtonInkWell()
            : IgnorePointer(
                child: _buildButtonInkWell(),
              ));
  }

  Widget _buildButtonInkWell() {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Loading(
              onClose: () {},
              duration: const Duration(seconds: 1),
            );
          },
        );
      },
      child: Ink(
        height: 40,
        color: widget.allowClick ? Colors.red[300] : Colors.red[100],
        child: Center(
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
