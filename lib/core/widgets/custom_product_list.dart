import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/widgets/custom_favourite_icon_btn.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/constants/app_images.dart';
import '../utils/extensions/app_extensions.dart';
import '../utils/theme/app_colors.dart';
import '../utils/theme/app_text_style.dart';

class CustomProductList extends StatelessWidget {
  final void Function()? addOnTap, productOnTap, favouriteOnTap;
  final num price, rating;
  final num? oldPrice;
  final double? width;
  final IconData? icon;
  final EdgeInsets? margin;
  final String imageUrl, description, title;
  final Color? iconColor;
  const CustomProductList({
    super.key,
    this.title = "Nike Air Jordon",
    this.description = "Nike shoes flexible for wo..",
    required this.imageUrl,
    this.productOnTap,
    this.favouriteOnTap,
    this.addOnTap,
    this.price = 2200,
    this.rating = 4.3,
    this.oldPrice,
    this.icon = FontAwesomeIcons.heart,
    this.iconColor,
    this.width,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final bodyMediumRegular = AppTextStyle.kBodyMediumRegular(
      context,
      color: AppColors.kTextColor,
    );
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: productOnTap,
        child: Container(
          width: width,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.kLineThrough),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(13),
                    ),
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: .cover,
                      width: context.kWidth,
                      height: context.kHeight * 0.220,
                      errorWidget: (context, url, error) => Image.asset(
                        AppImages.kTestProdecutList,
                        fit: .cover,
                        width: context.kWidth,
                        height: context.kHeight * 0.220,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CustomFavouriteIconBtn(
                      favouriteOnTap: favouriteOnTap,
                      icon: icon,
                      iconColor: iconColor,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: .spaceBetween,
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      title,
                      style: bodyMediumRegular,
                      maxLines: 1,
                      overflow: .ellipsis,
                    ),
                    Text(
                      description,
                      style: bodyMediumRegular,
                      maxLines: 1,
                      overflow: .ellipsis,
                    ),
                    Row(
                      spacing: 20,
                      children: [
                        Text(
                          "EGP ${price.toString()}",
                          style: bodyMediumRegular,
                        ),
                        if (oldPrice != null && oldPrice! > 0)
                          Text(
                            "EGP ${oldPrice.toString()}",
                            style: context.kTextTheme.labelSmall!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.kLineThrough,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: AppColors.kLineThrough,
                            ),
                          ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Row(
                          spacing: 4,
                          children: [
                            Text(
                              "Review (${rating.toString()})",
                              style: AppTextStyle.kBodySmallRegular(context),
                            ),
                            const Icon(
                              Icons.star_rounded,
                              color: AppColors.kStar,
                              size: 18,
                            ),
                          ],
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: addOnTap,
                          child: Icon(
                            Icons.add_circle,
                            color: AppColors.kMainColor,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
