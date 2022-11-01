import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../main.dart';

class LocaleController extends GetxController {
  Locale? language;

  // MyServices myServices = Get.find();
  //ThemeData appTheme = themeEnglish;
  changeLang(String langcode) {
    Locale locale = Locale(langcode);
    //  appTheme = langcode == "ar" ? themeArabic : themeEnglish;
    sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = sharedPreferences.getString("lang");
    if (sharedPrefLang == "ar") {
      language = const Locale("ar");
      // appTheme = themeArabic;
    } else if (sharedPrefLang == "en") {
      language = const Locale("en");
      //appTheme = themeEnglish;
    } else {
      //  appTheme = themeEnglish;
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
