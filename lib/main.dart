import 'dart:convert';

import 'package:flustars/flustars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bilibili/http/core/hi_net.dart';
import 'package:flutter_bilibili/http/page/register_page.dart';
import 'package:flutter_bilibili/http/request/test_request.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'bar_manager/buttom_navigate_bar_manager.dart';
import 'router/router_manager.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  navigateBarInit();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
