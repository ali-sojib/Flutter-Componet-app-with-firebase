import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constant/colors.dart';

class STextTheme {
  STextTheme._(); //To avoid crating constructor
  /* -- Light Text Theme -- */
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: sDarkColor),
    headline2: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: sDarkColor),
    headline3: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700, color: sDarkColor),
    headline4: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: sDarkColor),
    headline6: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: sDarkColor),
    bodyText1: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: sDarkColor),
    bodyText2: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: sDarkColor),
  );

/*-- Dark Text Theme -- */
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(fontSize: 28.0, fontWeight: FontWeight.bold, color: sWhiteColor),
    headline2: GoogleFonts.montserrat(fontSize: 24.0, fontWeight: FontWeight.w700, color: sWhiteColor),
    headline3: GoogleFonts.poppins(fontSize: 24.0, fontWeight: FontWeight.w700, color: sWhiteColor),
    headline4: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w600, color: sWhiteColor),
    headline6: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.w600, color: sWhiteColor),
    bodyText1: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: sWhiteColor),
    bodyText2: GoogleFonts.poppins(fontSize: 14.0, fontWeight: FontWeight.normal, color: sWhiteColor),
  );
}
