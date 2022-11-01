import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../domain_layer/controller/controllermain/authcontroller/Authcontroller.dart';
import '../../sherdwidget/TopsectionAuthImages.dart';
import '../../sherdwidget/custombutten.dart';
import 'widget/TextWithTextbuttonSigin.dart';
import 'widget/centersection.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final AuthController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.formkeylogin,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: InfoWidget(
              builder: (context, deviceInfo) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      const TopsectionAuthImages(),
                      SizedBox(
                        height: deviceInfo.localHeight * 0.04,
                      ),
                      CentersectionLigin(deviceInfo: deviceInfo),
                      SizedBox(
                        height: deviceInfo.localHeight * 0.02,
                      ),
                      Buttenwidget(
                        haigh: 73,
                        width: deviceInfo.localWidth * 0.83,
                        color: const Color.fromRGBO(143, 148, 251, 1),
                        text: '17'.tr,
                        press: () {
                          controller.Login();
                        },
                      ),
                      SizedBox(
                        height: deviceInfo.screenHeight * 0.02,
                      ),
                      const TextWithTextbuttonSigin(),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
