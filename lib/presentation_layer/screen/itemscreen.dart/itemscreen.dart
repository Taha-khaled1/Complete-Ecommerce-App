import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:ecomm/presentation_layer/resource/MangeColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../domain_layer/controller/controllermain/itemcontroller/Itemcontroller.dart';
import '../../sherdwidget/Bellandnotfcation.dart';
import 'widget/Items.dart';
//import 'widget/Textandlist.dart';

class Itemscreen extends StatelessWidget {
  Itemscreen({Key? key}) : super(key: key);
  final Itemcontroller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MangeColor.isFavoroteOOff,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Bellandnotfcation(deviceInfo: deviceInfo),
                    //  const Textandlist(),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: deviceInfo.localWidth,
                      height: deviceInfo.localHeight,
                      child: Items(
                        deviceInfo: deviceInfo,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
