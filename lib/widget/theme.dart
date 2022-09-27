import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    brightness: Brightness.light,
      cardColor: lightel,


      appBarTheme:
          const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0),
      iconTheme: IconThemeData(size: 35, color: context.primaryColor),
      primarySwatch: Colors.orange,
      primaryColor: Colors.black,
      canvasColor: lightbg,
      backgroundColor: Colors.black,
      fontFamily: GoogleFonts.pridi().fontFamily 
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      cardColor: darklightel,
      appBarTheme:
          const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0),
      iconTheme: IconThemeData(size: 35, color: context.primaryColor),
      primarySwatch: Colors.orange,
      primaryColor: Colors.white,
      canvasColor: darkbg,
      backgroundColor: Colors.white,
      fontFamily: GoogleFonts.pridi().fontFamily
      );

  static Color darkbg = Vx.black;
  static Color darklightel = const Color.fromARGB(255, 35, 35, 35);

  static Color lightel = const Color.fromARGB(255, 234, 234, 234);
  static Color lightbg = const Color.fromARGB(255, 255, 255, 255);
}
class MyDc{
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  static drkthm (BuildContext) => drkthm(
    drkthm(false)
    
  );
}