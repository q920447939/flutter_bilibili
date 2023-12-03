import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _bottomNavigationIndex = 3; //底部导航页的索引，从第一页开始（比如首页）

  List _bottomNameList = [
    "首页",
    "动态",
    "+",
    "会员购",
    "我的",
  ];

  int currentIndex = 0;

  late List<Widget> widgets;

  @override
  void initState() {
    super.initState();
    widgets = [
      const Center(child: Text('Page1')),
      const Center(child: Text('Page2')),
      const Center(child: Text('Page3')),
      const Center(child: Text('Page4')),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _buildBottomItems(),
      currentIndex: _bottomNavigationIndex,
      onTap: (idx) {
        _bottomNavigationIndex = idx;
      },
      selectedItemColor: Colors.red[300],
      //fixedColor: Colors.red[300],
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 14,
      unselectedFontSize: 14,
    );
  }

  List<BottomNavigationBarItem> _buildBottomItems() {
    return [
      BottomNavigationBarItem(
          icon: Image(
            image: AssetImage(
              Assets.image.home.buttomNavigate.home.path,
            ),
            width: 20,
            height: 20,
            color: Colors.grey,
          ),
          label: "首页"),
      BottomNavigationBarItem(
          icon: Image(
            image: AssetImage(
              Assets.image.home.buttomNavigate.dynamic.path,
            ),
            width: 20,
            height: 20,
            color: Colors.grey,
          ),
          label: "动态"),
      BottomNavigationBarItem(
        icon: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red[300]),
          child: Center(
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        label: "",
      ),
      BottomNavigationBarItem(
          icon: Image(
            image: AssetImage(
              Assets.image.home.buttomNavigate.shopCar.path,
            ),
            width: 20,
            height: 20,
            color: Colors.grey,
          ),
          label: "会员购"),
      BottomNavigationBarItem(
          icon: Image(
            image: AssetImage(
              Assets.image.home.buttomNavigate.my.path,
            ),
            width: 20,
            height: 20,
            color: Colors.grey,
          ),
          label: "我的"),
    ];
  }
}
