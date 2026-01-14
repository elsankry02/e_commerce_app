import 'package:e_commerce_app/core/routers/go_router.dart';
import 'package:flutter/material.dart';

import 'core/utils/constants/app_strings.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, fontFamily: kPoppins),
      routerConfig: router,
    );
  }
}
