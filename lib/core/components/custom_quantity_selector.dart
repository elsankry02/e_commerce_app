import '../utils/theme/app_colors.dart';
import '../utils/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomQuantitySelector extends StatelessWidget {
  final void Function()? minusOnTap, addOnTap;
  final num quantity;
  const CustomQuantitySelector({
    super.key,
    this.minusOnTap,
    this.addOnTap,
    this.quantity = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.kMainColor,
      ),
      child: Row(
        mainAxisSize: .min,
        mainAxisAlignment: .spaceBetween,
        children: [
          _iconBtn(
            onPressed: addOnTap,
            icon: FontAwesomeIcons.squarePlus,
            color: AppColors.kWhite,
          ),
          Text(
            quantity.toString(),
            style: AppTextStyle.kTitleMediumMedium(
              context,
              color: AppColors.kWhite,
            ),
          ),
          _iconBtn(
            onPressed: minusOnTap,
            icon: FontAwesomeIcons.squareMinus,
            color: AppColors.kWhite,
          ),
        ],
      ),
    );
  }

  IconButton _iconBtn({
    required void Function()? onPressed,
    required Color color,
    required IconData? icon,
  }) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon, color: color),
    );
  }
}
