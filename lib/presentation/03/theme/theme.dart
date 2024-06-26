import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final challenge003Theme = ThemeData(
  scaffoldBackgroundColor: const Color(0xfff9f9f9),
  textTheme: GoogleFonts.interTextTheme(
    TextTheme(
      titleLarge: const TextStyle(
        color: Color(0xffFF7074),
        fontSize: 30,
        fontWeight: FontWeight.w500
      ),
      titleMedium: const TextStyle(
        color: Color(0xff000000),
        fontSize: 20,
        fontWeight: FontWeight.w500
      ),
      titleSmall: const TextStyle(
        color: Color(0xff000000),
        fontSize: 16,
        fontWeight: FontWeight.w500
      ),
      bodyMedium: TextStyle(
        color: const Color(0xff000000).withOpacity(0.6),
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: const Color(0xff000000).withOpacity(0.6),
        fontSize: 12,
      ),
    ),
  ),
  colorScheme:  ColorScheme.light(
    brightness: Brightness.light, 
    primary: const Color(0xffFF7074),
    primaryContainer: const Color(0xffFFC7D0),
    onPrimaryContainer: const Color(0xff000000).withOpacity(0.41),
    onPrimary: const Color(0xff000000), 
    secondary: const Color(0xffD7E4F6), 
    onSecondary: const Color(0xff000000),
    onSecondaryContainer:const Color(0xff000000).withOpacity(0.41),
    background: const Color(0xfff9f9f9), 
    surface: const Color(0xffffffff),
    onBackground: const Color(0xff000000), 
  ),
);

const bgStoryColors =  [
  Color(0xffF9DD26),
  Color(0xffF9A326),
  Color(0xffD7243F),
  Color(0xffC33269),
  Color(0xffB43C88),
  Color(0xffAB429A),
  Color(0xffA844A1),
 
  


  
  
  
  
  
];