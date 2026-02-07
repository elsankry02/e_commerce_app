import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../utils/constants/app_images.dart';
import '../utils/extensions/app_extensions.dart';
import '../utils/theme/app_colors.dart';
import '../utils/theme/app_text_style.dart';
import 'custom_primary_btn.dart';

class CustomCategoryCard extends StatelessWidget {
  final String imageUrl, title;
  final void Function()? onTap;
  const CustomCategoryCard({
    super.key,
    required this.imageUrl,
    this.title = "Category",
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      spacing: 16,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.kTitleSmallMedium(
            context,
            color: AppColors.kTextColor,
          ),
        ),
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                height: context.kHeight * 0.14,
                width: context.kWidth,
                fit: BoxFit.cover,
                color: Colors.white24,
                colorBlendMode: BlendMode.srcOver,
                errorWidget: (context, url, error) => Image.asset(
                  AppImages.kTestCategoryCard,
                  height: context.kHeight * 0.14,
                  width: context.kWidth,
                  fit: BoxFit.cover,
                  color: Colors.white24,
                  colorBlendMode: BlendMode.srcOver,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    width: 100,
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.kTitleMediumSemiBold(
                        context,
                        color: AppColors.kTextColor,
                      ),
                    ),
                  ),
                  CustomPrimaryBtn(
                    title: "shop_now".tr(),
                    backgroundColor: AppColors.kMainColor,
                    disabledBackgroundColor: AppColors.kMainColor,
                    textStyle: AppTextStyle.kLabelMediumRegular(
                      context,
                      color: AppColors.kWhite,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 14),
                    mainAxisSize: .min,
                    onTap: onTap,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
