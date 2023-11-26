import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../bar_manager/buttom_navigate_bar_manager.dart';
import '../gen/assets.gen.dart';
import 'package:badges/badges.dart' as badges;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _iconWidth = 40;
  double _iconHeight = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            _buildTop(),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
          color: Colors.white,
          backgroundColor: Colors.red[300],
          onTap: (int index) {
            var routPath = targetRouter(index);
            print("routPath:$routPath");
            context.go(routPath);
          },
          style: TabStyle.fixed,
          items: [
            TabItem(icon: Icons.home, title: '首页'),
            TabItem(icon: Icons.person, title: '我的'),
            TabItem(icon: Icons.add, title: '登录'),
          ]),
    );
  }

  _buildTop() {
    return Row(
      children: [
        _buildTopLeft(),
        _buildTopCenter(),
        _buildTopRight(),
      ],
    );
  }

  _buildTopLeft() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ClipOval(
                  child: Image(
                    width: _iconWidth,
                    height: _iconHeight,
                    image: AssetImage(Assets.image.home.tVMan.path),
                  ),
                ),
              )),
        ),
        Positioned(
          left: 5,
          top: 25,
          child: Image(
            width: 25,
            height: 25,
            image: AssetImage(Assets.image.home.battery.path),
          ),
        )
      ],
    );
  }

  _buildTopCenter() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 2, right: 30),
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black54, width: 0.8),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
                padding: EdgeInsets.only(top: 2, left: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8, top: 10),
                        child: GestureDetector(
                          onTap: () {
                            print("search");
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.w300,
                                ),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: '树莓派4B',
                                )),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }

  _buildTopRight() {
    return Padding(
      padding: EdgeInsets.only(left: 7),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: _iconWidth,
                height: _iconHeight,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue[300],
                ),
                child: Align(
                  child: Text(
                    "哎唱歌",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 7),
            child: SizedBox(
              width: _iconWidth,
              height: _iconHeight,
              child: Image(
                image: AssetImage(
                  Assets.image.home.gamepad.path,
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 7),
              child: badges.Badge(
                position: badges.BadgePosition.topEnd(top: -5, end: -5),
                badgeContent: Text('3'),
                child: SizedBox(
                  width: _iconWidth,
                  height: _iconHeight,
                  child: Image(
                    image: AssetImage(
                      Assets.image.home.envolope.path,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
