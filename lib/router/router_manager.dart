import 'package:flutter/material.dart';
import 'package:flutter_bilibili/http/page/login_page.dart';
import 'package:flutter_bilibili/http/page/register_page.dart';
import 'package:go_router/go_router.dart';

import '../page/home_page.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'register',
          builder: (BuildContext context, GoRouterState state) {
            return RegisterPage();
          },
        ),
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return LoginPage();
          },
        ),
      ],
    ),
  ],
);
