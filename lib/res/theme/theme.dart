import 'dart:ui';

import 'package:flutter/material.dart';   import 'package:woo_customer/ui/widget/bottomNavBar.dart';
import 'package:woo_customer/res/theme/theme_color.dart';

class AppTheme {
  static const Color primaryColor = Color(0xffF07846);
  static const Color backGroundColor = Color(0xffD2D2D2);
  static const Color colorBackground = Color(0xfffff6f7);
  static const Color colorWhite = Color(0xFFFFFFFF);
  static const Color continerBackgroundColor = Color(0xFFFFFFFF);
  static const Color textColorSkyBLue = Color(0xff1c50ea);

  //custom
  static const Color textColorDarkGreyDK = Color(0xFF293044);

  static AppColor get colors {
    return AppColor.getColor();
  }

  static const primaryColorMaterial = const MaterialColor(0xffF07846, {
    50: const Color(0xffF07846),
    100: const Color(0xffF07846),
    200: const Color(0xffF07846),
    300: const Color(0xffF07846),
    400: const Color(0xffF07846),
    500: const Color(0xffF07846),
    600: const Color(0xffF07846),
    700: const Color(0xffF07846),
    800: const Color(0xffF07846),
    900: const Color(0xffF07846)
  });

// use MaterialColor: myGreen.shade100,myGreen.shade500 ...
//   myGreen.shade50 // Color === 0xFFAAD401

  static const primaryGradientColor = LinearGradient(
    colors: [
      Color(0xff1c50ea),
      Color(0xff1c50ea),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  static const secondaryGradientColor = LinearGradient(
    colors: [
      Color(0xffdd6021),
      Color(0xffdd6021),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const primaryGradientColorGreen = LinearGradient(
    colors: [
      Color(0xFF4CAF50),
      Color(0xFF4CAF50),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const primaryGradientColorWhite = LinearGradient(
    colors: [
      Color(0xffffffff),
      Color(0xffffffff),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const buttonGradientColor = LinearGradient(
    colors: [
      Color(0xffffdc64),
      Color(0xffffdc64),
    ],
    stops: [0.0, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
