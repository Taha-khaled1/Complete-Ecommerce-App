import 'package:flutter/material.dart';

ThemeData? theme = ThemeData(
  appBarTheme: const AppBarTheme(
    actionsIconTheme: IconThemeData(color: Colors.black),
    iconTheme: IconThemeData(color: Colors.black),
  ),
  primaryColor: Colors.blue[300],
  fontFamily: 'Cairo',
  textTheme: TextTheme(
    headline6: TextStyle(
      color: Colors.black.withOpacity(0.8),
      fontWeight: FontWeight.bold,
    ),
    headline3: TextStyle(
      color: Colors.black.withOpacity(0.8),
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: Colors.black.withOpacity(0.8),
      fontWeight: FontWeight.bold,
    ),
    headline4: TextStyle(
      color: Colors.black.withOpacity(0.7),
      fontWeight: FontWeight.bold,
    ),
  ),
);
