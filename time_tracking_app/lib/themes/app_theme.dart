import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: Colors.red,
        contentTextStyle: TextStyle(color: Colors.white),
      ),
      tabBarTheme: TabBarThemeData(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white70,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.white,
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: Colors.black87),
      ),
    );
  }
}
