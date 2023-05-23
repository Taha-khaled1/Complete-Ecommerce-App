import 'package:flutter/material.dart';

ThemeData? theme = ThemeData(
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(color: Colors.black),
    iconTheme: IconThemeData(color: Colors.black),
  ),
  primaryColor: Colors.blue[300],
  fontFamily: 'Cairo',
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: Colors.black.withOpacity(0.8),
      fontWeight: FontWeight.bold,
    ),
    displaySmall: TextStyle(
      color: Colors.black.withOpacity(0.8),
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      color: Colors.black.withOpacity(0.8),
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: Colors.black.withOpacity(0.7),
      fontWeight: FontWeight.bold,
    ),
  ),
);
