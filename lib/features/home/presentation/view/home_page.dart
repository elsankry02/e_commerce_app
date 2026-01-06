import 'package:auto_route/annotations.dart';
import 'package:e_commerce_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kMainColor,
        title: Text(
          "E Commerce App",
          style: TextStyle(color: AppColors.kWhite),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
