import 'package:e_commerce_app/features/auth/presentation/spalsh/splash.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const Splash(),
    ),
  ],
);
