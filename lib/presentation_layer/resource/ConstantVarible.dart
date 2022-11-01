// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MangementVarible {
  static const String massge1 = 'This field cannot be greater than';
  static const String massge2 = 'This field cannot be smaller than';
  static const String massge3 = 'This field cannot be empty';
  static const defaultDuration = Duration(milliseconds: 250);
  static const kDefaultPaddin = 20.0;
  static const kDefaultcircle = 25.0;
  static const kAnimationDuration = Duration(milliseconds: 200);
  static const SliverGridDelegateWithFixedCrossAxisCount
      silvergraidviewseetings = SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 20,
    crossAxisSpacing: 20,
    childAspectRatio: 8 / 9,
  );
}
