import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../application_layer/service/localizetion/changelangue.dart';
import 'widget/ButtonWithText.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(15),
          child: InfoWidget(
            builder: (context, deviceInfo) => ButtonWithtext(
              controller: controller,
              width1: deviceInfo.localWidth * 0.83,
              width2: deviceInfo.localWidth * 0.83,
            ),
          )),
    );
  }
}
