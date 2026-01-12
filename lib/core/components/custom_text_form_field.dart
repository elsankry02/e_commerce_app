import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? prefixText, suffixText;
  final bool obscureText, autofocus;
  final bool? filled;
  final double radius;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? hintStyle, suffixStyle, style, prefixStyle;
  final int? maxLength;
  final Widget? prefixIcon, suffixIcon;
  final TextEditingController? controller;
  final Function(String value)? onChanged, onFieldSubmitted;
  final String? Function(String? value)? validator;
  final Color? cursorColor, suffixIconColor, prefixIconColor, fillColor;
  final Color enabledBorderColor, focusedBorderColor;
  const CustomTextFormField({
    super.key,
    this.hintText = "enter your name",
    this.controller,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.autovalidateMode,
    this.hintStyle = const TextStyle(
      color: AppColors.kDarkBlue,
      fontSize: 18,
      fontWeight: FontWeight.w300,
    ),
    this.onFieldSubmitted,
    this.maxLength,
    this.cursorColor,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.obscureText = false,
    this.filled,
    this.fillColor,
    this.autofocus = false,
    this.enabledBorderColor = AppColors.kMainColor,
    this.focusedBorderColor = AppColors.kMainColor,
    this.prefixText,
    this.suffixText,
    this.suffixStyle,
    this.prefixStyle,
    this.style = const TextStyle(
      color: AppColors.kDarkBlue,
      fontSize: 18,
      fontWeight: FontWeight.w300,
    ),
    this.radius = 15,
    this.contentPadding = const EdgeInsets.all(16),
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      autovalidateMode: autovalidateMode,
      autofocus: autofocus,
      validator: validator,
      obscureText: obscureText,
      controller: controller,
      onChanged: onChanged,
      maxLength: maxLength,
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: cursorColor,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        filled: filled,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        prefixStyle: prefixStyle,
        prefixText: prefixText,
        suffixIcon: suffixIcon,
        prefixIconColor: prefixIconColor,
        suffixIconColor: suffixIconColor,
        suffixStyle: suffixStyle,
        suffixText: suffixText,
        hintText: hintText,
        hintStyle: hintStyle,
        enabledBorder: outlineInputBorder(
          color: enabledBorderColor,
          radius: radius,
        ),
        focusedBorder: outlineInputBorder(
          color: focusedBorderColor,
          radius: radius,
        ),
        focusedErrorBorder: outlineInputBorder(
          color: AppColors.kError,
          radius: radius,
        ),
        errorBorder: outlineInputBorder(
          color: AppColors.kError,
          radius: radius,
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({
    required Color color,
    required double radius,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      // borderColor
      borderSide: BorderSide(color: color),
    );
  }
}
