import 'package:flutter/material.dart';
import 'package:volunteers_yemen/core/theme/colors.dart';
import 'package:volunteers_yemen/core/utils/size_utils.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static TextStyle bodyMediumFigtreeBluegray400(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.figtree.copyWith(
            color: appTheme.blueGray400,
          );
  static TextStyle bodyMediumGray500(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: appTheme.gray500,
          );
  static TextStyle bodyMediumffa6a6a5(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Color(0XFFA6A6A5),
          );
  static TextStyle bodySmallMontserratCyanA400(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.montserrat.copyWith(
            color: Theme.of(context).colorScheme.secondary,
          );
  static TextStyle bodySmallMontserratGray1006d(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.montserrat.copyWith(
            color: appTheme.blueGray400,
          );
  // Title text style
  static TextStyle titleLargeMontserratPrimaryContainer(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.montserrat.copyWith(
            color:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(1),
            fontWeight: FontWeight.w400,
          );
  static TextStyle titleLargePrimaryContainer(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
            color: appTheme.whiteA700.withOpacity(1),
            fontWeight: FontWeight.w400,
          );
  static TextStyle titleLargePrimaryContainerSemiBold(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
            color:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(1),
            fontWeight: FontWeight.w600,
          );
  static TextStyle titleSmallCyan400(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall!.copyWith(
            color: appTheme.cyan400,
            fontWeight: FontWeight.w600,
          );
  static TextStyle titleSmallGray500(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall!.copyWith(
            color: appTheme.gray500,
          );

  static TextStyle titleSmallPrimaryContainer(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall!.copyWith(
            color:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(1),
            fontWeight: FontWeight.w600,
          );
  static TextStyle titleSmallff65c997(BuildContext context) =>
      Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Color(0XFF65C997),
          );
  static TextStyle bodyLargeInterWhiteA700(BuildContext context) =>
      Theme.of(context)
          .textTheme
          .bodyLarge!
          .inter
          .copyWith(color: appTheme.whiteA700, fontSize: 18.fSize);
  static TextStyle titleMediumffffffff(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Color(0XFFFFFFFF),
            fontSize: 25.fSize,
          );
  static TextStyle bodySmallInterffffffff(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.inter.copyWith(
            color: Color(0XFFFFFFFF),
            fontSize: 10.fSize,
          );
  static TextStyle bodySmall2(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: 12.fSize,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      );
  static TextStyle bodySmall3(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.background,
        fontSize: 15.fSize,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      );
  static TextStyle bodyMedium1(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.surface,
        fontSize: 15.fSize,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get figtree {
    return copyWith(
      fontFamily: 'Figtree',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get gilroySemiBold {
    return copyWith(
      fontFamily: 'Gilroy-SemiBold',
    );
  }
}
