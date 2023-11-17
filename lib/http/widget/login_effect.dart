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
    return Container(
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100],
          border: Border(
              bottom: BorderSide(
            color: Colors.grey[300]!,
          ))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildImageLeft(widget.protect),
          _buildImageRight(widget.protect),
        ],
      ),
    );
  }

  _buildImageLeft(bool protect) {
    String leftImagePath = protect
        ? Assets.image.login.close.closeEyeLeft.path
        : Assets.image.login.open.openEyeLeft.path;
    String rightImagePath = protect
        ? Assets.image.login.close.closeEyeRight.path
        : Assets.image.login.open.openEyeRight.path;
    return protect
        ? Image(image: AssetImage(Assets.image.login.close.closeEyeLeft.path))
        : Image(image: AssetImage(Assets.image.login.open.openEyeLeft.path));
  }

  _buildImageRight(bool protect) {
    protect
        ? Assets.image.login.close.closeEyeRight.path
        : Assets.image.login.open.openEyeRight.path;
    return protect
        ? Image(image: AssetImage(Assets.image.login.close.closeEyeRight.path))
        : Image(image: AssetImage(Assets.image.login.open.openEyeRight.path));
  }
}
