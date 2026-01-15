import 'package:e_commerce_app/core/utils/theme/app_colors.dart';
import 'package:e_commerce_app/core/utils/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CustomQuantitySelector extends StatelessWidget {
  final void Function()? onMinus, onAdd;
  final num quantity;
  const CustomQuantitySelector({
    super.key,
    this.onMinus,
    this.onAdd,
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
            onPressed: onAdd,
            icon: Iconsax.add_circle_copy,
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
            onPressed: onMinus,
            icon: Iconsax.minus_cirlce_copy,
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
