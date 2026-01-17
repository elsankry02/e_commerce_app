import 'package:e_commerce_app/core/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomFavouriteIcon extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final void Function()? favouriteOnTap;
  const CustomFavouriteIcon({
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
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColors.kWhite,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 20, color: iconColor),
      ),
    );
  }
}
