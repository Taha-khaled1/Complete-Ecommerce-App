// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../domain_layer/controller/controllermain/authcontroller/Authcontroller.dart';
import '../../../../application_layer/ShardFunction/valid.dart';
import 'customtextfild.dart';

class AllTextfieldSiginSecreen extends StatelessWidget {
  const AllTextfieldSiginSecreen(
      {Key? key, required this.controller, required this.deviceInfo})
      : super(key: key);
  final AuthController controller;
  final DeviceInfo deviceInfo;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                offset: Offset(0, 10),
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Textfeild(
                deviceInfo: deviceInfo,
                onsaved: (p0) {
                  controller.emaillog = p0!;
                },
                titel: '12'.tr,
                valid: (p0) {
                  return validInput(p0.toString(), 4, 50, 'email');
                },
              ),
              const Divider(),
              Textfeild(
                deviceInfo: deviceInfo,
                onsaved: (p0) {
                  controller.passwordlog = p0!;
                },
                titel: '13'.tr,
                valid: (p0) {
                  return validInput(p0.toString(), 8, 70, 'password');
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
