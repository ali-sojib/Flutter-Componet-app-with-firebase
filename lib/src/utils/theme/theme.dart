import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/utils/theme/widget_theme/text_theme.dart';

class SAppTheme {
  ///making SAppTheme constructor private
  ///so no one can create an instance of this class
  SAppTheme._();
/*
    ///0x=hexa definaiton
    ///FF= opacity
    ///rest of all color code
    primarySwatch: const MaterialColor(
      0xFFFFE200,
      <int, Color>{
        50: Color(0x1AFFE200),
        100: Color(0x33FFE200),
        200: Color(0x4DFFE200),
        300: Color(0x66FFE200),
        400: Color(0x80FFE200),
        500: Color(0xFFFFE200),
        600: Color(0x99FFE200),
        700: Color(0xB3FFE200),
        800: Color(0xCCFFE200),
        900: Color(0xE6FFE200),
      },
    ),
*/
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: STextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: STextTheme.dartTextTheme,
  );
}
