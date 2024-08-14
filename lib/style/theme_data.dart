import 'package:flutter/material.dart';

class MyThemeData{
  static const Color goldColor = Color(0xffB7935F);
  static const Color darkColor = Color(0xff141A2E);
  static const Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: goldColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: goldColor,
      primary: goldColor,
      secondary: goldColor,
    ),
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.black),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ))
    ),
    scaffoldBackgroundColor: Colors.transparent,
    // canvasColor: Color(0xffB7935F),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        size: 36,
      ),
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
    dividerColor: goldColor,
    cardTheme: CardTheme(
      margin: EdgeInsets.symmetric(vertical: 55, horizontal: 29),
      color: Colors.white,
      elevation: 16,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      )
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        )
    ),
    textTheme: TextTheme(
        labelMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        titleMedium: TextStyle(
      fontSize: 20,
      color: Colors.black,
    ),
          bodySmall: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
      labelSmall: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      )
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkColor,
      primary: yellowColor,
      secondary: darkColor,
    ),
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.white),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
        )
        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    // canvasColor: Color(0xffB7935F),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(
        color: yellowColor,
        size: 36,
      ),
      selectedItemColor:yellowColor,
      unselectedItemColor: Colors.white,
    ),
    dividerColor: yellowColor,
    cardTheme: CardTheme(
        margin: EdgeInsets.symmetric(vertical: 80, horizontal: 10),
        color: darkColor,
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        )
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: darkColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      )
    ),
    textTheme: TextTheme(
        labelMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontSize: 18,
          color: yellowColor,
        ),
        labelSmall: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),

    ),
  );
}