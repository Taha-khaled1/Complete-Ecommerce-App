import 'package:ecomm/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';
import 'AllTextfieldLoginSecreen.dart';

// ignore: camel_case_types
class CentersectionLigin extends StatelessWidget {
  const CentersectionLigin({
    Key? key,
    required this.deviceInfo,
  }) : super(key: key);
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
                      offset: Offset(0, 10))
                ]),
            child: AllTextfieldLoginSecreen(
              deviceInfo: deviceInfo,
            )),
      ],
    );
  }
}
