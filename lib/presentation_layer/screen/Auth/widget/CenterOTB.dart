// ignore_for_file: file_names

import 'package:ecomm/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class CenterOTB extends StatelessWidget {
  const CenterOTB({
    Key? key,
    required this.deviceInfo,
  }) : super(key: key);
  final DeviceInfo deviceInfo;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(25),
          constraints: BoxConstraints(
              maxHeight: 120,
              minHeight: 100,
              maxWidth: deviceInfo.localWidth * 0.9),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(143, 148, 251, .2),
                    blurRadius: 20.0,
                    offset: Offset(0, 10))
              ]),
          child: OTPTextField(
            onChanged: (value) {},
            length: 5,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 80,
            style: const TextStyle(fontSize: 17),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              Get.toNamed('Resetpassword');
            },
          ),
        ),
      ],
    );
  }
}
