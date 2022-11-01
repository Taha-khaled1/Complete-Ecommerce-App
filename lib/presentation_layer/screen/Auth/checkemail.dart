import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../domain_layer/controller/controllermain/authcontroller/Authcontroller.dart';
import '../../../application_layer/ShardFunction/valid.dart';
import '../../resource/MangeColor.dart';
import '../../sherdwidget/TopsectionAuthImages.dart';
import '../../sherdwidget/custombutten.dart';
import 'widget/customtextfild.dart';

class Checkemail extends StatelessWidget {
  Checkemail({Key? key}) : super(key: key);
  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.formkeycheckemail,
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
                      Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Textfeild(
                                  deviceInfo: deviceInfo,
                                  onsaved: (p0) {},
                                  titel: '12'.tr,
                                  valid: (p0) {
                                    return validInput(
                                        p0.toString(), 4, 50, 'email');
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: deviceInfo.localHeight * 0.02,
                      ),
                      Buttenwidget(
                        haigh: 73,
                        width: deviceInfo.localWidth * 0.83,
                        color: MangeColor.authColorButton,
                        text: '27'.tr,
                        press: () {
                          var x = controller.checkemail();
                          x != null ? Get.toNamed('verifycode') : null;
                        },
                      ),
                      SizedBox(
                        height: deviceInfo.screenHeight * 0.02,
                      ),
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
