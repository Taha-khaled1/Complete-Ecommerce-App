import 'package:ecomm/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';

class Thretext extends StatelessWidget {
  const Thretext({
    Key? key,
    this.text1,
    this.text2,
    this.text3,
    required this.margin,
    required this.deviceInfo,
  }) : super(key: key);
  final double margin;
  final String? text1;
  final String? text2;
  final String? text3;
  final DeviceInfo deviceInfo;
  @override
  Widget build(BuildContext context) {
    final TextTheme textstyel = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(bottom: margin),
      width: deviceInfo.localWidth * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$text1',
            style: textstyel.displaySmall,
          ),
          Text(
            '$text2',
            style: textstyel.headlineMedium,
          ),
          Text(
            '$text3',
            style: textstyel.titleLarge,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
