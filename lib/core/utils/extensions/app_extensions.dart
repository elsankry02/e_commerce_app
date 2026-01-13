import 'package:flutter/material.dart';

extension AppExtensions on BuildContext {
  double get kHeight => MediaQuery.of(this).size.height;
  double get kWidth => MediaQuery.of(this).size.width;
  TextTheme get kTextTheme => Theme.of(this).textTheme;
}
