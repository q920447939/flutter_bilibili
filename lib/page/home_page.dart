import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:go_router/go_router.dart';

import '../bar_manager/buttom_navigate_bar_manager.dart';

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
      ),
      body: Center(
        child: Text("首页"),
      ),
      bottomNavigationBar: ConvexAppBar(
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
}
