import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../bar_manager/buttom_navigate_bar_manager.dart';
import '../gen/assets.gen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        //_buildTopCenter(),
        //_buildTopRight(),
      ],
    );
  }

  _buildTopLeft() {
    return Stack(
      children: [
        Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(Assets.image.background.grey.path),
                fit: BoxFit.fill),
          ),
          child: Image(
            image: AssetImage(Assets.image.icos.login.path),
          ),
        )
      ],
    );
  }

  _buildTopCenter() {}

  _buildTopRight() {}
}
