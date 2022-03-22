import 'package:flutter/material.dart';

class Constants {
  static const white = Colors.white;
  static const secondary = Color(0xff323335);
  static const lightGray = Color(0xffc0c1c3);
  static const lighterGray = Color(0xffe0e0e0);
  static const black = Colors.black;
  static const primary = Color(0xfffdc912);
  static const tertiary = Color(0xffff36b6b);

  var Apptheme = ThemeData(
      fontFamily: 'Roboto',
      primaryColor: primary,
      primaryColorLight: primary,
      primaryColorDark: primary,
      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent, elevation: 0));
  var appdarktheme = ThemeData.dark().copyWith(
      primaryColor: primary,
      appBarTheme:
          AppBarTheme(backgroundColor: Colors.transparent, elevation: 0));
}
