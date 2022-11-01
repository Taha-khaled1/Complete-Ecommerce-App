import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../sherdwidget/custombutten.dart';
import 'widget/CenterOTB.dart';
import 'widget/thretext.dart';

class Verifycode extends StatelessWidget {
  const Verifycode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Thretext(
                        deviceInfo: deviceInfo,
                        margin: 30,
                        text1: '43'.tr,
                        text2: '44'.tr,
                        text3: '42'.tr),
                    CenterOTB(deviceInfo: deviceInfo),
                    SizedBox(
                      height: deviceInfo.localHeight * 0.02,
                    ),
                    Buttenwidget(
                      haigh: 73,
                      width: deviceInfo.localWidth * 0.83,
                      color: const Color.fromRGBO(143, 148, 251, 1),
                      text: '45'.tr,
                      press: () {},
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
    );
  }
}
