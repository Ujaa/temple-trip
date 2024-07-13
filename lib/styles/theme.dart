import 'package:app/utilities/font_type.dart';
import 'package:flutter/material.dart';

var appTheme = ThemeData(
  useMaterial3: true,
  fontFamily: FontType.suit.name,
  colorScheme: const ColorScheme.light(
    primary: Colors.black,
  ),
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 32,
      fontFamily: FontType.suit.name,
      fontVariations: const [FontVariation('wght', 600)],
      color: Colors.black,
      height: 1.4,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontFamily: FontType.suit.name,
      fontVariations: const [FontVariation('wght', 500)],
      color: Colors.black,
      height: 1.4,
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      fontFamily: FontType.suit.name,
      fontVariations: const [FontVariation('wght', 500)],
      color: Colors.black,
      height: 1.4,
    ),
    bodyMedium: TextStyle(
      fontSize: 12,
      fontFamily: FontType.suit.name,
      fontVariations: const [FontVariation('wght', 600)],
      color: Colors.black,
      height: 1.6,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontFamily: FontType.suit.name,
      fontVariations: const [FontVariation('wght', 600)],
      color: Colors.black,
      height: 1,
    ),
    labelLarge: TextStyle(
      fontSize: 12,
      fontFamily: FontType.suit.name,
      fontVariations: const [FontVariation('wght', 500)],
      color: Colors.black,
      height: 1,
    ),
    labelMedium: TextStyle(
      fontSize: 10,
      fontFamily: FontType.suit.name,
      fontVariations: const [FontVariation('wght', 500)],
      color: Colors.black,
      height: 1,
    ),
  ),
);
