import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class LoginEffect extends StatefulWidget {
  bool protect;
  LoginEffect({Key? key, required this.protect}) : super(key: key);

  @override
  State<LoginEffect> createState() => _LoginEffectState();
}

class _LoginEffectState extends State<LoginEffect> {
  @override
  Widget build(BuildContext context) {
    double height = ScreenUtil.getInstance().screenHeight;
    print("height is => $height");
    return Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border(
                bottom: BorderSide(
              color: Colors.grey[300]!,
            ))),
        child: Container(
          height: height / 6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: _buildImageLeft(widget.protect),
              ),
              Expanded(
                child: Image(
                  image: AssetImage(Assets.image.login.center.biliLogo.path),
                  width: 30,
                ),
              ),
              Expanded(
                child: _buildImageRight(widget.protect),
              ),
            ],
          ),
        ));
  }

  _buildImageLeft(bool protect) {
    return protect
        ? Image(image: AssetImage(Assets.image.login.close.closeEyeLeft.path))
        : Image(image: AssetImage(Assets.image.login.open.openEyeLeft.path));
  }

  _buildImageRight(bool protect) {
    return protect
        ? Image(image: AssetImage(Assets.image.login.close.closeEyeRight.path))
        : Image(image: AssetImage(Assets.image.login.open.openEyeRight.path));
  }
}
