import 'package:flutter/material.dart';
import 'package:volunteers_yemen/core/theme/pallete.dart';
import 'package:volunteers_yemen/core/theme/theme_helper.dart';

class PrimaryColors {
  Color get blue70090 => Color(0X902684BC);
  Color get blue900 => Color(0XFF0B437E);
  Color get blueGray400 => Color(0XFF8C8E99);
  Color get blueGray900 => Color(0XFF29292D);
  Color get cyan400 => Color(0XFF22D1EE);
  Color get cyanA400 => Color(0XFF11DCE8);
  Color get cyan5003f => Color(0X3F07D9D6);
  Color get gray100 => Color(0XFFF4F6F5);
  Color get gray500 => Color.fromARGB(255, 228, 228, 228);
  Color get gray50001 => Color(0XFF8F8F8F);
  Color get gray1006d => Color(0X6DF2F2F2);
  Color get orangeA200 => Color(0XFFFFA24C);
  Color get whiteA700 => Color(0XFFFFFFFF);
  Color get purpleA200 => Color(0XFFFE37DC);
  Color get black90001 => Color(0XFF000000);

  get lightBlue700 => null;

  // ignore: non_constant_identifier_names
}

PrimaryColors get appTheme => AppTheme().getThemeColors();

class AppGradient {
  static const LinearGradient lightGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      PalleteLight.primaryColor,
      PalleteLight.secondaryColor,
    ],
  );

  static const LinearGradient darkGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      PalleteDark.primaryColor,
      PalleteDark.secondaryColor,
    ],
  );

  static LinearGradient getGradient(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.light) {
      return lightGradient;
    } else {
      return darkGradient;
    }
  }
}

class AppGradient1 {
  static const LinearGradient lightGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      PalleteDark.primaryColor,
      PalleteDark.secondaryColor,
    ],
  );

  static const LinearGradient darkGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      PalleteLight.primaryColor,
      PalleteLight.secondaryColor,
    ],
  );

  static LinearGradient getGradient(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.light) {
      return lightGradient;
    } else {
      return darkGradient;
    }
  }
}
