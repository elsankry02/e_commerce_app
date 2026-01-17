import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_app/core/utils/constants/app_images.dart';
import 'package:e_commerce_app/core/utils/extensions/app_extensions.dart';
import 'package:e_commerce_app/core/utils/theme/app_colors.dart';
import 'package:e_commerce_app/core/utils/theme/app_text_style.dart';
import 'package:e_commerce_app/core/widgets/custom_quantity_selector.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCartItem extends StatelessWidget {
  final String imageUrl, titleCircle, titleItem;
  final void Function()? addToCartOnTap,
      deleteOnTap,
      itemOnTap,
      minusOnTap,
      addOnTap;
  final Color colorCircle;
  final EdgeInsets? margin;
  final num price, size, quantity;

  const CustomCartItem({
    super.key,
    required this.imageUrl,
    this.titleCircle = "orange",
    this.titleItem = "Nike Air Jordon",
    this.price = 1500,
    this.colorCircle = AppColors.kOrangeRed,
    this.addToCartOnTap,
    this.deleteOnTap,
    this.itemOnTap,
    this.margin,
    this.quantity = 0,
    this.size = 40,
    this.minusOnTap,
    this.addOnTap,
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
          padding: EdgeInsetsDirectional.only(end: 8),
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
                  title: _titleAndDeleteIcon(context),
                  subtitle: Column(
                    children: [
                      _colorAndSizeItem(context),
                      _priceAndQuantitySelector(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _titleAndDeleteIcon(BuildContext context) {
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
        InkWell(
          onTap: deleteOnTap,
          borderRadius: BorderRadius.circular(50),
          child: Icon(
            FontAwesomeIcons.trashCan,
            color: AppColors.kTextColor,
            size: 20,
          ),
        ),
      ],
    );
  }

  Row _colorAndSizeItem(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Container(
          width: context.kHeight * 0.015,
          height: context.kHeight * 0.015,
          decoration: BoxDecoration(shape: .circle, color: colorCircle),
        ),
        Text(
          "$titleCircle | size: $size",
          style: AppTextStyle.kTitleSmallRegular(
            context,
            color: AppColors.kDescriptionColor,
          ),
        ),
      ],
    );
  }

  Row _priceAndQuantitySelector(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          "EGP ${price.toString()}",
          style: AppTextStyle.kTitleMediumMedium(
            context,
            color: AppColors.kTextColor,
          ),
        ),
        CustomQuantitySelector(
          addOnTap: addOnTap,
          minusOnTap: minusOnTap,
          quantity: quantity,
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
            AppImages.kTestProdecutList,
            fit: .cover,
            width: width,
            height: height,
          ),
        ),
      ),
    );
  }
}
