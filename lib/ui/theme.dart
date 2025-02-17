import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color orangeClr = Color(0xCFFF8746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light= ThemeData(primaryColor:pinkClr,dialogBackgroundColor:Colors.white,brightness: Brightness.light);
  static final dark= ThemeData(primaryColor:darkGreyClr,dialogBackgroundColor:darkGreyClr,brightness: Brightness.dark);

} TextStyle get headingStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(

    )
  );
}