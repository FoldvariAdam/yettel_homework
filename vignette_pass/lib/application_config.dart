import 'package:flutter/material.dart';

class ApplicationConfig {
  Color mainColor = const Color(0xFF002340);
  Color primary = const Color(0xFFB4FF00);
  Color backgroundColor = const Color(0xFFF2F4F5);
  Color cardColor = const Color(0xFFFFFFFF);
  Color primaryButtonColor = const Color(0xFF002340);
  Color secondaryButtonColor = const Color(0xFFFFFFFF);

  late final TextStyle highlightedTextStyle;
  late final TextStyle bodyTextStyle;
  late final TextStyle heading2S;
  late final TextStyle heading4S;
  late final TextStyle heading7S;
  late final TextStyle heading5L;

  ApplicationConfig() {
    highlightedTextStyle = TextStyle(fontWeight: FontWeight.w300, fontSize: 16.0, color: mainColor);

    bodyTextStyle = TextStyle(fontWeight: FontWeight.w300, fontSize: 12.0, color: mainColor);

    heading2S = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 40.0,
      letterSpacing: -0.8,
      color: mainColor,
    );

    heading4S = TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0, color: mainColor);

    heading7S = TextStyle(fontWeight: FontWeight.w700, fontSize: 12.0, color: mainColor);

    heading5L = TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0, color: mainColor);
  }

  BorderRadiusGeometry borderRadius = BorderRadius.circular(12);
  Radius headerBorderRadius = const Radius.circular(32);

  /// 5px spacing
  final double spacing0 = 5;

  /// 10px spacing
  final double spacing1 = 10;

  /// 15px spacing
  final double spacing2 = 15;

  /// 20px spacing
  final double spacing3 = 20;
}
