import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF77B5E4);
const Color secondaryColor = Color(0xFF34AD82);
const Color terciaryColor = Color(0xFFFC8682);
const Color black = Color(0xFF333333);
const Color white = Color(0xFFF3F3F3);
const Color yellow = Color(0xFFFFF490);
const Color alert = Color(0xFFFFD600);
const Color grey = Color(0xFF939393);
const Color purple = Color(0xFFCEBDFF);

const List<Color> _colorThemes = [
  primaryColor,
  secondaryColor,
  terciaryColor,
  black,
  white,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1);

  ThemeData get theme {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      fontFamily: 'Montserrat',
    );
  }
}
