// ignore_for_file: file_names

import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../sherdwidget/custombutten.dart';

class Sucsspage extends StatelessWidget {
  const Sucsspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(
          maxHeight: double.infinity,
          minHeight: 500,
        ),
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '37'.tr,
                  style: textstyel.headline4,
                ),
                const CircleAvatar(
                  backgroundColor: Color(0xff80ed99),
                  radius: 110,
                  child: Icon(
                    Icons.done,
                    size: 130,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '28'.tr,
                  style: textstyel.headline5,
                ),
                Buttenwidget(
                  color: const Color(0xff80ed99),
                  haigh: 73,
                  width: deviceInfo.localWidth * 0.83,
                  press: () {},
                  text: '31'.tr,
                )
              ],
            );
          },
        ),
      )),
    );
  }
}
