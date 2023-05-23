import 'package:ecomm/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';
import '../../../resource/MangeColor.dart';

class Customcontainer extends StatelessWidget {
  const Customcontainer({
    Key? key,
    required this.textstyel,
    required this.deviceInfo,
  }) : super(key: key);

  final TextTheme textstyel;
  final DeviceInfo deviceInfo;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: deviceInfo.localWidth * 0.05, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          color: MangeColor.authColorButtonoragin,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: RichText(
            text: TextSpan(
              text: 'A Summer Surpise\n ',
              style: textstyel.headlineSmall!.copyWith(color: Colors.white),
              children: const <TextSpan>[
                TextSpan(
                  text: 'Cashback 20%',
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
