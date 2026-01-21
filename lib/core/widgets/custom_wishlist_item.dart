import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../utils/constants/app_images.dart';
import '../utils/extensions/app_extensions.dart';
import '../utils/theme/app_colors.dart';
import '../utils/theme/app_text_style.dart';
import 'custom_favourite_icon_btn.dart';
import 'custom_primary_btn.dart';

class CustomWishlistItem extends StatelessWidget {
  final void Function()? addToCartOnTap, favouriteOnTap, itemOnTap;
  final Color colorCircle;
  final Color? iconColor;
  final IconData? icon;
  final EdgeInsets? margin;
  final String imageUrl, titleCircle, titleItem;
  final num? oldPrice;
  final num price;
  const CustomWishlistItem({
    super.key,
    required this.imageUrl,
    this.titleCircle = "Orange",
    this.titleItem = "Tall Cotton Dress",
    this.price = 1500,
    this.oldPrice = 2000,
    this.icon = Icons.favorite,
    this.colorCircle = AppColors.kOrange,
    this.iconColor = AppColors.kMainColor,
    this.addToCartOnTap,
    this.favouriteOnTap,
    this.itemOnTap,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(15);
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: itemOnTap,
        child: Container(
          padding: EdgeInsetsDirectional.only(end: 16),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.kLineThrough),
            borderRadius: borderRadius,
          ),
          child: Row(
            spacing: 10,
            children: [
              _imageUrl(context),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: _titleAndFavouriteIcon(context),
                  subtitle: Column(
                    children: [_colorItem(context), _priceAndBtnCart(context)],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _titleAndFavouriteIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          titleItem,
          style: AppTextStyle.kTitleMediumMedium(
            context,
            color: AppColors.kTextColor,
          ),
        ),
        CustomFavouriteIconBtn(
          favouriteOnTap: favouriteOnTap,
          icon: icon,
          iconColor: iconColor,
        ),
      ],
    );
  }

  Row _colorItem(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Container(
          width: context.kHeight * 0.015,
          height: context.kHeight * 0.015,
          decoration: BoxDecoration(shape: .circle, color: colorCircle),
        ),
        Text(
          titleCircle,
          style: AppTextStyle.kTitleSmallRegular(
            context,
            color: AppColors.kTextColor,
          ),
        ),
      ],
    );
  }

  Row _priceAndBtnCart(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          "${price.toString()} ${"egp".tr()}",
          style: AppTextStyle.kTitleMediumMedium(
            context,
            color: AppColors.kTextColor,
          ),
        ),
        if (oldPrice != null && oldPrice! > 0)
          Text(
            "${oldPrice.toString()} ${"egp".tr()}",
            style: context.kTextTheme.labelSmall!.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.kLineThrough,
              decoration: TextDecoration.lineThrough,
              decorationColor: AppColors.kLineThrough,
            ),
          ),
        CustomPrimaryBtn(
          title: "add_to_cart".tr(),
          borderRadius: BorderRadius.circular(15),
          textStyle: AppTextStyle.kTitleSmallMedium(
            context,
            color: AppColors.kWhite,
          ),
          padding: EdgeInsets.all(9),
          mainAxisSize: .min,
          onTap: addToCartOnTap,
        ),
      ],
    );
  }

  Container _imageUrl(BuildContext context) {
    final borderRadius = BorderRadius.circular(15);
    final height = context.kHeight * 0.140;
    final width = context.kHeight * 0.120;
    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(color: AppColors.kLineThrough),
      ),
      child: ClipRRect(
        borderRadius: borderRadius,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: .cover,
          width: width,
          height: height,
          errorWidget: (context, url, error) => Image.asset(
            AppImages.kWishlistItem,
            fit: .cover,
            width: width,
            height: height,
          ),
        ),
      ),
    );
  }
}
