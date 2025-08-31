import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';

class TextStyles {
  static TextStyle titleStyle({
    Color? color,
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return TextStyle(
      fontSize: 24,
      fontWeight: fontWeight,
      color: color ?? AppColors.darkColor,
    );
  }

  static TextStyle smallStyle({
    Color? color,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: 24,
      fontWeight: fontWeight,
      color: color ?? AppColors.greyColor,
    );
  }
  static TextStyle bodyStyle({
    Color? color, 
    double fontSize = 16,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: 24,
      fontWeight: fontWeight,
      color: color ?? AppColors.darkColor,
    );
  }
}
