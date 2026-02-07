import '../utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBtmNavBar extends StatelessWidget {
  final IconData? icon;
  final int currentIndex, index;
  final void Function()? onPressed;
  const CustomBtmNavBar({
    super.key,
    required this.icon,
    this.onPressed,
    required this.currentIndex,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: .circle,
          color: currentIndex == index ? AppColors.kWhite : null,
        ),
        child: Icon(
          icon,
          size: 24,
          color: currentIndex == index
              ? AppColors.kMainColor
              : AppColors.kWhite,
        ),
      ),
    );
  }
}
