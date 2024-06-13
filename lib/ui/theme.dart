import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

const Color blueish = Color(0xFF4e5ae8);
const Color blueishDark = Color(0xFF2f3b8f);
const Color blueishLight = Color(0xFF6b7ff9);
const Color yellowish = Color(0xFFFFB746);
const Color white = Colors.white;
const primaryColor = blueish;
const Color greyDark = Color(0xFF121212);
const Color greyLight = Color.fromARGB(255, 174, 174, 174);
Color darkHeader = Color(0xFF424242);


class Themes{
  static final light= ThemeData(
    primaryColor: primaryColor,
    brightness:  Brightness.light,
  );

  static final dark= ThemeData(
    primaryColor: greyDark,
    brightness: Brightness.dark,
  );
}

TextStyle get subHeadingStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode?Colors.grey[400]:Colors.black,
    )
  );
}

TextStyle get headingStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode?Colors.grey[400]:Colors.black,
    )
  );
}

TextStyle get titleStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Get.isDarkMode?Colors.grey[400]:Colors.black,
    )
  );
}

TextStyle get subTitleStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Get.isDarkMode?Colors.grey[100]:Colors.grey[400],
    )
  );
}