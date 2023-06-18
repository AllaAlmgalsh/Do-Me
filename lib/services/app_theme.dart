import 'package:do_me/cnstants/colors.dart';
import 'package:flutter/material.dart';

enum AppTheme { lightTheme, darkTheme }

class AppThemes {
  static final appThemeData = {
    AppTheme.darkTheme: ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.black,
      brightness: Brightness.dark,
      backgroundColor: Color(0xFF212121),
      dividerColor: Colors.black54,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.grey,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
      ),
      appBarTheme: AppBarTheme(
        color: Colors.grey,
      ),
      textTheme: TextTheme(
        subtitle1: TextStyle(color: Colors.white),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.grey, unselectedItemColor: Colors.white),
    ),

    //
    //

    AppTheme.lightTheme: ThemeData(
      primarySwatch: Colors.grey,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      backgroundColor: tdBlue,
      dividerColor: Color(0xff757575),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      appBarTheme: AppBarTheme(
        color: tdRed,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
      ),
      textTheme: TextTheme(
        subtitle1: TextStyle(color: Colors.black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: tdBlue,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white),
    ),
  };
}
