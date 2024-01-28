import 'package:flutter/material.dart';

class AppFonts {
  static TextStyle getTitleLargeFont(
    BuildContext context, {
    double fontSize = 30,
    Color fontColor = Colors.black,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.ellipsis,
      color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle getTitleMidFont(
    BuildContext context, {
    double fontSize = 25,
    Color fontColor = Colors.black,
    FontWeight fontWeight = FontWeight.w500,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      color: fontColor,
      overflow: TextOverflow.ellipsis,
      fontWeight: fontWeight,
    );
  }

  static TextStyle getTitleSmallFont(
    BuildContext context, {
    double fontSize = 20,
    Color fontColor = Colors.black,
    FontWeight fontWeight = FontWeight.w500,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.ellipsis,
      color: fontColor,
      fontWeight: fontWeight,
    );
  }

  static TextStyle getCaptionFont(
    BuildContext context, {
    double fontSize = 15,
    Color fontColor = Colors.grey,
    FontWeight fontWeight = FontWeight.w500,
  }) {
    return TextStyle(
      fontSize: getResponsiveFontSize(
        context,
        fontSize: fontSize,
      ),
      color: fontColor,
      fontWeight: fontWeight,
      overflow: TextOverflow.ellipsis,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  double scale = screenWidth / 400;
  return scale * fontSize;
}
