
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather/service/constants/colors.dart';

class Fonts{
  Fonts._();
  /// ```static const String poppins = "Poppins";```
  static const String poppins = "Poppins";
  /// ```static const String syncopate = "Syncopate";```
  static const String syncopate = "Syncopate";

}

class Style extends TextStyle{
  const Style._();
  static TextStyle splashOneTextStyle(double size) {
    return TextStyle(
      fontFamily: "Syncopate",
      fontWeight: FontWeight.w700,
      fontSize: size,
      color: Colors.white,
    );
  }
}

class CustomStyle extends TextStyle{
  const CustomStyle._();
  static TextStyle textStyle({
    required double size,
    FontWeight fontWeight = FontWeight.w400,
    Color color = CustomColors.colors12_24_35_1,
  }) {
    return TextStyle(
      fontFamily: Fonts.poppins,
      fontWeight: fontWeight,
      fontSize: size,
      color: color,
    );
  }
}