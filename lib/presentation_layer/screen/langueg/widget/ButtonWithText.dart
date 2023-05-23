// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/resource/MangeColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../application_layer/service/localizetion/changelangue.dart';
import '../../../sherdwidget/custombutten.dart';

class ButtonWithtext extends StatelessWidget {
  const ButtonWithtext({
    Key? key,
    required this.controller,
    required this.width1,
    required this.width2,
  }) : super(key: key);

  final LocaleController controller;
  final double width1;
  final double width2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("choice the langueg",
            style: Theme.of(context).textTheme.displaySmall),
        const SizedBox(height: 20),
        Buttenwidget(
          color: MangeColor.buttonColor2,
          haigh: 75,
          text: "Arabic",
          press: () {
            controller.changeLang("ar");
            Get.toNamed('Onboarding');
          },
          width: width1,
        ),
        Buttenwidget(
          haigh: 75,
          text: "English",
          press: () {
            controller.changeLang("en");
            Get.toNamed('Onboarding');
          },
          color: MangeColor.buttonColor1,
          width: width2,
        ),
      ],
    );
  }
}
