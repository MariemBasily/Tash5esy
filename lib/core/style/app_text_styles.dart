import 'package:flutter/material.dart';

class AppTextStyles {
  static const String _fontFamily = 'Lato';

  // Body text styles in various sizes
  static const TextStyle solganText = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 50,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle bodyTextForm = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle bodyTextSmall = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle bodyTextMedium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 17,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle bodyTextLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

static const TextStyle bodyTextMedium2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );
static const TextStyle bodyTextExtraLarge = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );
}
//use this in Text() widget to apply text styles according to the ui in figma and check it well