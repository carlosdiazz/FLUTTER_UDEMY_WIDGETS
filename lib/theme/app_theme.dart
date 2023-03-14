import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color Primario
      primaryColor: Colors.indigoAccent,

      //AppTheme Theme
      appBarTheme: const AppBarTheme(backgroundColor: primary, elevation: 0),

      //TextButton
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      //Elevate Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: const StadiumBorder(),
          textStyle: TextStyle(fontSize: 15),
          padding: EdgeInsets.all(20),
        ),
      ),

      //Floating Action Buttons
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      //Input Decoration
      inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: primary),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));
}
