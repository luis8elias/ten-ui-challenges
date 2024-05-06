import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final challenge001Theme = ThemeData(
  textTheme: GoogleFonts.montserratTextTheme(
    const TextTheme(
      titleLarge: TextStyle(fontSize: 36, color: Color(0xffffffff)),
      bodyMedium: TextStyle(
        fontSize: 14, 
        color: Color(0xffffffff),
        fontWeight: FontWeight.normal
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontSize: 12
      )
    ),
  ),
  colorScheme: const ColorScheme.light(
    brightness: Brightness.light, 
    primary: Color(0xff533EDE), 
    onPrimary: Color(0xffffffff), 
    secondary: Color(0xffDADADA), 
    onSecondary: Color(0xff000000), 
    error: Colors.red, 
    onError: Color(0xffffffff), 
    background: Color(0xffffffff), 
    onBackground: Color(0xff000000), 
    surface: Color(0xffffffff), 
    onSurface: Color(0xff000000)
  ),
);