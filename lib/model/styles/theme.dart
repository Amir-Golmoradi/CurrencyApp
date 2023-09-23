import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final customThemes = ThemeData(
  textTheme: TextTheme(
    /* Headline1 is deprecated so i used "displayLarge" */
    displayLarge: GoogleFonts.lato(
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: GoogleFonts.lato(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    /*bodyText1 is deprecated so I use bodyLarge */
    bodyLarge: GoogleFonts.lato(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    /* Headline2 is deprecated so i used "displayMedium" */
    displayMedium: GoogleFonts.lato(
      fontWeight: FontWeight.w400,
      color: Colors.white,
      fontSize: 17,
    ),
    headlineLarge: GoogleFonts.lato(
      fontWeight: FontWeight.w600,
      fontSize: 25,
    ),
    displaySmall: GoogleFonts.lato(
      fontWeight: FontWeight.w700,
      fontSize: 13,
      color: Colors.red,
    ),
    headlineMedium: GoogleFonts.lato(
      fontWeight: FontWeight.w700,
      fontSize: 15,
      color: Colors.green,
    ),
  ),
);
