// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:ecomm/presentation_layer/resource/linksApi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/MangeColor.dart';
import 'widget/Customappbar.dart';
import 'widget/Prudectdescrbtion.dart';

class PrudectDetelis extends StatelessWidget {
  final List infoitem = Get.arguments['infoitem'];

  PrudectDetelis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MangeColor.kTextWahtcolor,
      appBar: customappbar(),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 280,
                    child: Image.network(
                        '${LinksApi.imagerootcart}/${infoitem[0].itemsImage}'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: MangeColor.whaitecolor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Prudectdescrbtion(
                      infoitem: infoitem,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
