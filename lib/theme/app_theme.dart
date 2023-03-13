import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.deepOrange;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color Primario
      primaryColor: Colors.indigoAccent,

      //AppTheme Theme
      appBarTheme: const AppBarTheme(backgroundColor: primary, elevation: 0),

      //TextButton
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)));
}
