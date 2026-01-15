import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/utils/constants/app_images.dart';
import 'package:e_commerce_app/core/utils/extensions/app_extensions.dart';
import 'package:e_commerce_app/core/utils/theme/app_colors.dart';
import 'package:e_commerce_app/core/utils/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomCategoryItem extends StatelessWidget {
  final String imageUrl, title;
  const CustomCategoryItem({
    super.key,
    required this.imageUrl,
    this.title = "Category",
  });

  @override
  Widget build(BuildContext context) {
    final border = BorderRadius.circular(5);
    final double imageSize = context.kHeight * 0.080;
    return Column(
      spacing: 8,
      mainAxisSize: .min,
      mainAxisAlignment: .center,
      children: [
        InkWell(
          borderRadius: border,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: border,
              border: Border.all(color: AppColors.kBorder),
            ),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: .cover,
              height: imageSize,
              width: imageSize,
              errorWidget: (context, url, error) => Image.asset(
                AppImages.kTestCategoryItem,
                fit: .cover,
                height: imageSize,
                width: imageSize,
              ),
            ),
          ),
        ),
        SizedBox(
          width: imageSize,
          child: Text(
            title,
            textAlign: .center,
            maxLines: 1,
            overflow: .ellipsis,
            style: AppTextStyle.kLabelMediumRegular(
              context,
              color: AppColors.kTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
