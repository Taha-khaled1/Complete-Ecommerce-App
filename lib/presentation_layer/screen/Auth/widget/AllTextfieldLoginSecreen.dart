// ignore_for_file: file_names

import 'package:ecomm/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../domain_layer/controller/controllermain/authcontroller/Authcontroller.dart';
import '../../../../application_layer/ShardFunction/valid.dart';
import 'customtextfild.dart';

class AllTextfieldLoginSecreen extends StatelessWidget {
  AllTextfieldLoginSecreen({Key? key, required this.deviceInfo})
      : super(key: key);
  final AuthController controller = Get.find();
  final DeviceInfo deviceInfo;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Textfeild(
          deviceInfo: deviceInfo,
          onsaved: (p0) {
            controller.username = p0!;
          },
          titel: '20'.tr,
          valid: (p0) {
            return validInput(p0.toString(), 2, 50, 'username');
          },
        ),
        const Divider(),
        Textfeild(
          deviceInfo: deviceInfo,
          onsaved: (p0) {
            controller.email = p0!;
          },
          titel: '18'.tr,
          valid: (p0) {
            return validInput(p0.toString(), 5, 50, 'email');
          },
        ),
        const Divider(),
        Textfeild(
          deviceInfo: deviceInfo,
          onsaved: (p0) {
            controller.phone = p0!;
          },
          titel: '21'.tr,
          valid: (p0) {
            return validInput(p0.toString(), 5, 50, 'phone');
          },
        ),
        const Divider(),
        GetBuilder<AuthController>(
          builder: (controller) {
            return Textfeild(
              iconontap: () {
                controller.Obsecuer();
              },
              obsecuer: controller.obsecuer,
              icon: controller.obsecuer == true
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              deviceInfo: deviceInfo,
              onsaved: (p0) {
                controller.password = p0!;
              },
              titel: '19'.tr,
              valid: (p0) {
                return validInput(p0.toString(), 8, 70, 'password');
              },
            );
          },
        ),
      ],
    );
  }
}
