import 'package:bluecs_assignment/configure/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: CustomColors.backgroundColor,
    textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: CustomColors.backgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: CustomColors.backgroundColor,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: CustomColors.backgroundColor,
      iconTheme: WidgetStatePropertyAll(
        IconThemeData(color: Colors.white),
      ),
      labelTextStyle: WidgetStatePropertyAll(
        TextStyle(color: Colors.white),
      ),
    ),
  );
}
