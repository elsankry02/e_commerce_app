import '../utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFavouriteIconBtn extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final void Function()? favouriteOnTap;
  const CustomFavouriteIconBtn({
    super.key,
    required this.favouriteOnTap,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: favouriteOnTap,
      child: Container(
        height: 30,
        width: 30,
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: AppColors.kWhite,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 20, color: AppColors.kMainColor),
      ),
    );
  }
}
