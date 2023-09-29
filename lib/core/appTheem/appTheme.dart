import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class appTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xffB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 30,
        )),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
          fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
      bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
      bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25, color: Colors.black, fontWeight: FontWeight.w500),
      bodySmall: GoogleFonts.elMessiri(
          fontSize: 18, color: Colors.black, fontWeight: FontWeight.normal),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xffB7935F),
      selectedIconTheme: IconThemeData(color: Colors.black, size: 34),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(size: 28, color: Colors.white),
      unselectedItemColor: Colors.white,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        titleTextStyle: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 30,
        )),
  );
}
