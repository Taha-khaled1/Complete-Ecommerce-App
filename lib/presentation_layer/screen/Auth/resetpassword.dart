import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../domain_layer/controller/controllermain/authcontroller/Authcontroller.dart';
import 'widget/AllTextfeildRestpassword.dart';

class Resetpassword extends StatelessWidget {
  Resetpassword({Key? key}) : super(key: key);
  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            key: controller.formkeyrestpas,
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              child: InfoWidget(
                builder: (context, deviceInfo) {
                  return SingleChildScrollView(
                      child: AllTextfeildRestpassword(
                    deviceInfo: deviceInfo,
                  ));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
