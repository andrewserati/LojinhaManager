import 'package:flutter/material.dart';

const Color primaryColorLM = Color(0xFF22015B);
const Color secondaryColorLM = Color(0xFF0AA828);
const Color primaryForegroundColorLM = Color(0XFFDFD1EB);

class LMTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      //primarySwatch: Colors.purple,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(
          color: secondaryColorLM,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: secondaryColorLM,
          ),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: secondaryColorLM,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColorLM,
        foregroundColor: primaryForegroundColorLM,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColorLM,
          foregroundColor: primaryForegroundColorLM,
        ),
      ),
    );
  }
}
