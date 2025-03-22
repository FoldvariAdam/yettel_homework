import 'package:flutter/material.dart';

class ApplicationConfig {
  Color mainColor = const Color(0xFF002340);
  Color backgroundColor = const Color(0xFFF2F4F5);
  Color cardColor = const Color(0xFFFFFFFF);
  Color primaryButtonColor = const Color(0xFF002340);
  Color secondaryButtonColor = const Color(0xFFFFFFFF);

  late final TextStyle highlightedTextStyle;
  late final TextStyle bodyTextStyle;
  late final TextStyle headingS;
  late final TextStyle headingL;

  ApplicationConfig() {
    highlightedTextStyle = TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 16.0,
      color: mainColor,
    );

    bodyTextStyle = TextStyle(
      fontWeight: FontWeight.w100,
      fontSize: 12.0,
      color: mainColor,
    );

    headingS = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20.0,
      color: Color(0xFFFFFFFF),
    );

    headingL = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
      color: mainColor,
    );
  }

  BorderRadiusGeometry borderRadius = BorderRadius.circular(12);

  /// 10px spacing
  final double spacing1 = 10;

  /// 15px spacing
  final double spacing2 = 15;

  /// 20px spacing
  final double spacing3 = 20;
}
