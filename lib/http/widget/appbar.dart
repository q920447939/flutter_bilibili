import 'package:flutter/material.dart';

appBar(String leftTitle, String rightTitle, VoidCallback rightClick) {
  return AppBar(
    centerTitle: false,
    titleSpacing: 0,
    leading: BackButton(),
    title: Text(
      leftTitle,
      style: TextStyle(fontSize: 16),
    ),
    actions: <Widget>[
      InkWell(
        onTap: rightClick,
        child: Container(
          padding: EdgeInsets.only(left: 15, right: 15),
          alignment: Alignment.center,
          child: Text(
            rightTitle,
            style: TextStyle(fontSize: 16, color: Colors.grey[500]),
          ),
        ),
      )
    ],
  );
}
