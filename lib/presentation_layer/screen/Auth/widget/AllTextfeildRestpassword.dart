// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../domain_layer/controller/controllermain/authcontroller/Authcontroller.dart';
import '../../../../application_layer/ShardFunction/valid.dart';
import '../../../sherdwidget/custombutten.dart';
import 'customtextfild.dart';

class AllTextfeildRestpassword extends StatelessWidget {
  AllTextfeildRestpassword({Key? key, required this.deviceInfo})
      : super(key: key);
  final DeviceInfo deviceInfo;
  final AuthController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Align(
            alignment: Alignment.topLeft,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
              child: Text(
                '14'.tr,
                style: textstyel.headlineMedium!.copyWith(
                  color: const Color.fromRGBO(143, 148, 251, 1),
                ),
              ),
            ),
          ),
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
                    titel: '39'.tr,
                    valid: (p0) {
                      return validInput(p0.toString(), 8, 70, 'password');
                    },
                  ),
                  const Divider(),
                  Textfeild(
                    deviceInfo: deviceInfo,
                    onsaved: (p0) {},
                    titel: '35'.tr,
                    valid: (p0) {
                      return validInput(p0.toString(), 8, 70, 'password');
                    },
                  ),
                  const Divider(),
                  Textfeild(
                    deviceInfo: deviceInfo,
                    onsaved: (p0) {},
                    titel: '40'.tr,
                    valid: (p0) {
                      return validInput(p0.toString(), 8, 70, 'password');
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
          color: const Color.fromRGBO(143, 148, 251, 1),
          text: '41'.tr,
          press: () {
            controller.resetpassword();
            Get.toNamed('Sucsspage');
          },
        ),
        SizedBox(
          height: deviceInfo.screenHeight * 0.02,
        ),
      ],
    );
  }
}
