import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{

static Color primaryColor=Color(0xFFB7935F);
static Color blackColor=Color(0xFF242424);
static Color whiteColor=Color(0xFFF8F8F8);

  static ThemeData lightTheme=ThemeData(
    appBarTheme: const AppBarTheme(
     centerTitle: true,

      backgroundColor: Colors.transparent,

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(

      type: BottomNavigationBarType.shifting,
      backgroundColor: primaryColor,
      selectedItemColor:blackColor ,
      unselectedItemColor: whiteColor,

    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: primaryColor,
        fontWeight: FontWeight.bold

      ),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          color: blackColor

      ),
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 12,
          color: whiteColor

      ),


    ),
    scaffoldBackgroundColor: Colors.transparent

  ) ;

}