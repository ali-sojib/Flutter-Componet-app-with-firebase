import 'package:flutter/material.dart';

import '../../../constant/colors.dart';
import '../../../constant/sizes.dart';

/* Light & Dark Outlined Button Themes */
class SOutlinedButtonTheme {
  SOutlinedButtonTheme._(); //To avoid creating instances

  /*-- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: sSecondaryColor,
      side: BorderSide(color: sSecondaryColor),
      padding: EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: sWhiteColor,
      side: BorderSide(color: sWhiteColor),
      padding: EdgeInsets.symmetric(vertical: sButtonHeight),
    ),
  );
}
