import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/test/test_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const TestPage(),
    ),
  ],
);
