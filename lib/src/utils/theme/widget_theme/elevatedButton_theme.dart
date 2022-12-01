import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/src/constant/colors.dart';
import 'package:flutter_app_with_firebase/src/constant/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class SElevatedButtonTheme {
  SElevatedButtonTheme._(); //To avoid creating instances

/*--Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: sWhiteColor,
      backgroundColor: sSecondaryColor,
      side: BorderSide(color: sSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );

/*-- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: sSecondaryColor,
      backgroundColor: sWhiteColor,
      side: BorderSide(color: sSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );
}
