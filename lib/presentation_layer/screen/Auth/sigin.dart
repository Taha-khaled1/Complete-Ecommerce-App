import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:ecomm/presentation_layer/screen/Auth/widget/AllTextfieldSiginSecreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../domain_layer/controller/controllermain/authcontroller/Authcontroller.dart';
import '../../sherdwidget/TopsectionAuthImages.dart';
import '../../sherdwidget/custombutten.dart';

class Sigin extends StatelessWidget {
  Sigin({Key? key}) : super(key: key);
  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: controller.formkeysigin,
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
                      SizedBox(
                        height: deviceInfo.localHeight * 0.02,
                      ),
                      AllTextfieldSiginSecreen(
                          controller: controller, deviceInfo: deviceInfo),
                      Buttenwidget(
                        haigh: 73,
                        width: deviceInfo.localWidth * 0.83,
                        color: const Color.fromRGBO(143, 148, 251, 1),
                        text: '9'.tr,
                        press: () {
                          controller.sigin();
                        },
                      ),
                      SizedBox(
                        height: deviceInfo.screenHeight * 0.02,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed('Checkemail');
                          },
                          child: Text(
                            "14".tr,
                            style: textstyel.headlineMedium!.copyWith(
                              color: const Color.fromARGB(92, 10, 15, 121),
                            ),
                          ),
                        ),
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
