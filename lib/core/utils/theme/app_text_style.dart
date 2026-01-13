import 'package:e_commerce_app/core/utils/extensions/app_extensions.dart'; // تأكد من المسار الصحيح للـ extension
import 'package:flutter/material.dart';

class AppTextStyle {
  // ==========================================
  // 1. DISPLAY (57, 45, 36)
  // ==========================================

  // --- Display Large (57) ---
  static TextStyle kDisplayLargeRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.displayLarge!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kDisplayLargeMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.displayLarge!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kDisplayLargeSemiBold(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.displayLarge!.copyWith(
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle kDisplayLargeBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.displayLarge!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // --- Display Medium (45) ---
  static TextStyle kDisplayMediumRegular(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.displayMedium!.copyWith(
    fontWeight: FontWeight.w400,
    color: color,
  );
  static TextStyle kDisplayMediumMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.displayMedium!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kDisplayMediumSemiBold(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.displayMedium!.copyWith(
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle kDisplayMediumBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.displayMedium!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // --- Display Small (36) ---
  static TextStyle kDisplaySmallRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kDisplaySmallMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kDisplaySmallSemiBold(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.displaySmall!.copyWith(
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle kDisplaySmallBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.displaySmall!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // ==========================================
  // 2. HEADLINE (32, 28, 24)
  // ==========================================

  // --- Headline Large (32) ---
  static TextStyle kHeadlineLargeRegular(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.headlineLarge!.copyWith(
    fontWeight: FontWeight.w400,
    color: color,
  );
  static TextStyle kHeadlineLargeMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kHeadlineLargeSemiBold(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.headlineLarge!.copyWith(
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle kHeadlineLargeBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // --- Headline Medium (28) ---
  static TextStyle kHeadlineMediumRegular(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.headlineMedium!.copyWith(
    fontWeight: FontWeight.w400,
    color: color,
  );
  static TextStyle kHeadlineMediumMedium(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.headlineMedium!.copyWith(
    fontWeight: FontWeight.w500,
    color: color,
  );
  static TextStyle kHeadlineMediumSemiBold(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.headlineMedium!.copyWith(
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle kHeadlineMediumBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // --- Headline Small (24) ---
  static TextStyle kHeadlineSmallRegular(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.headlineSmall!.copyWith(
    fontWeight: FontWeight.w400,
    color: color,
  );
  static TextStyle kHeadlineSmallMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kHeadlineSmallSemiBold(
    BuildContext context, {
    Color? color,
  }) => context.kTextTheme.headlineSmall!.copyWith(
    fontWeight: FontWeight.w600,
    color: color,
  );
  static TextStyle kHeadlineSmallBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // ==========================================
  // 3. TITLE (22, 16, 14)
  // ==========================================

  // --- Title Large (22) ---
  static TextStyle kTitleLargeRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kTitleLargeMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kTitleLargeSemiBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle kTitleLargeBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // --- Title Medium (16) ---
  static TextStyle kTitleMediumRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kTitleMediumMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kTitleMediumSemiBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle kTitleMediumBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // --- Title Small (14) ---
  static TextStyle kTitleSmallRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kTitleSmallMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kTitleSmallSemiBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle kTitleSmallBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // ==========================================
  // 4. LABEL (14, 12, 11)
  // ==========================================

  // --- Label Large (14) ---
  static TextStyle kLabelLargeRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kLabelLargeMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kLabelLargeSemiBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle kLabelLargeBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // --- Label Medium (12) ---
  static TextStyle kLabelMediumRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kLabelMediumMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kLabelMediumSemiBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle kLabelMediumBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // --- Label Small (11) ---
  static TextStyle kLabelSmallRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kLabelSmallMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kLabelSmallSemiBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle kLabelSmallBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // ==========================================
  // 5. BODY (16, 14, 12)
  // ==========================================

  // --- Body Large (16) ---
  static TextStyle kBodyLargeRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kBodyLargeMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kBodyLargeSemiBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle kBodyLargeBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // --- Body Medium (14) ---
  static TextStyle kBodyMediumRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kBodyMediumMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kBodyMediumSemiBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle kBodyMediumBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );

  // --- Body Small (12) ---
  static TextStyle kBodySmallRegular(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
        color: color,
      );
  static TextStyle kBodySmallMedium(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w500,
        color: color,
      );
  static TextStyle kBodySmallSemiBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w600,
        color: color,
      );
  static TextStyle kBodySmallBold(BuildContext context, {Color? color}) =>
      context.kTextTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w700,
        color: color,
      );
}
