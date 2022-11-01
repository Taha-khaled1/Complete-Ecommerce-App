// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../application_layer/ShardFunction/statusrequst.dart';
import '../../../../data_layer/functionrespon/LoginFunc.dart';
import '../../../../data_layer/functionrespon/SiginupFunc.dart';
import '../../../../application_layer/ShardFunction/handling.dart';
import '../../../../main.dart';

class AuthController extends GetxController {
  final GlobalKey<FormState> formkeylogin = GlobalKey();
  late StatusRequest statusRequest;
  List data = [];
  late String username, email, password, phone;

  // ignore: non_constant_identifier_names
  Login() async {
    FormState? formdata = formkeylogin.currentState!;
    if (formdata.validate()) {
      formdata.save();
      statusRequest = StatusRequest.loading;
      var responss = await siginUpinsert(username, email, password, phone);
      statusRequest = handlingData(responss);
      if (StatusRequest.success == statusRequest) {
        if (responss['status'].toString() == 'success') {
          Get.offNamed('home');
        } else {
          statusRequest = StatusRequest.failure;
        }
      }

      return responss;
    } else {}
  }

  final GlobalKey<FormState> formkeysigin = GlobalKey();
  late String emaillog, passwordlog;

  sigin() async {
    FormState formdata = formkeysigin.currentState!;
    statusRequest = StatusRequest.loading;
    if (formdata.validate()) {
      formdata.save();
      var respon = await login(emaillog, passwordlog);
      statusRequest = handlingData(respon);
      if (StatusRequest.success == statusRequest) {
        if (respon['status'].toString() == 'success') {
          sharedPreferences.setString(
              'id', respon['data']['users_id'].toString());
          sharedPreferences.setString(
              'username', respon['data']['users_name'].toString());
          sharedPreferences.setString(
              'email', respon['data']['users_email'].toString());
          sharedPreferences.setString(
              'phone', respon['data']['users_phone'].toString());
          sharedPreferences.setString('step', '2');
          Get.offNamed('home');
        } else {
          statusRequest = StatusRequest.failure;
        }
      }
    }
  }

  final GlobalKey<FormState> formkeyrestpas = GlobalKey();

  resetpassword() {
    FormState formdata = formkeyrestpas.currentState!;
    if (formdata.validate()) {
    } else {}
  }

  final GlobalKey<FormState> formkeycheckemail = GlobalKey();

  checkemail() {
    FormState formdata = formkeycheckemail.currentState!;
    if (formdata.validate()) {
      return 'x';
    } else {
      return null;
    }
  }

  bool? obsecuer = true;
  // ignore: non_constant_identifier_names
  Obsecuer() {
    obsecuer = !obsecuer!;
    update();
  }
}
