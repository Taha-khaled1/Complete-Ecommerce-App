import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../presentation_layer/resource/listmodelonbording.dart';
import '../../main.dart';

funonboard(int c, PageController control) {
  c++;
  if (c < onBoardingList.length) {
    control.animateToPage(c,
        duration: const Duration(milliseconds: 200), curve: Curves.ease);
  } else {
    sharedPreferences.setString('step', '1');
    Get.toNamed(
      'Login',
    );
  }
}
