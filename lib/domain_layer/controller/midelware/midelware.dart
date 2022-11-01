import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../main.dart';

class Midelware extends GetMiddleware {
  @override
  // ignore: overridden_fields
  final int? priority = 1;

  @override
  RouteSettings? redirect(String? route) {
    if (sharedPreferences.getString('step').toString() == '2'.toString()) {
      return const RouteSettings(name: 'home');
    }
    if (sharedPreferences.getString('step').toString() == '1'.toString()) {
      return const RouteSettings(name: 'Login');
    }
    return null;
  }
}
