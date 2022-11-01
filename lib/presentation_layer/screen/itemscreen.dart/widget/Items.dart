// ignore_for_file: file_names
import 'package:ecomm/domain_layer/controller/controllermain/itemcontroller/Itemcontroller.dart';
import 'package:ecomm/domain_layer/models/itemviewmodel.dart';
import 'package:ecomm/presentation_layer/Infowidget/models/device_info.dart';
import 'package:ecomm/presentation_layer/handlingView/handlingview.dart';
import 'package:ecomm/presentation_layer/resource/ConstantVarible.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../sherdwidget/neumorphism.dart';

class Items extends StatelessWidget {
  Items({
    required this.deviceInfo,
    Key? key,
  }) : super(key: key);
  final DeviceInfo deviceInfo;
  final List<Data> infoitem = [];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Itemcontroller>(
      init: Itemcontroller(),
      builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: SizedBox(
            width: deviceInfo.localWidth,
            height: deviceInfo.localHeight * 0.7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: GridView.builder(
                gridDelegate: MangementVarible.silvergraidviewseetings,
                itemCount: controller.itemmodelview?.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      infoitem.clear();
                      infoitem.add(controller.itemmodelview!.data![index]);
                      controller.gotoDetalisitemscreen(
                        infoitem,
                      );
                    },
                    child: NeumorphismCard(
                      image:
                          '${controller.itemmodelview?.data![index].itemsImage}',
                      price:
                          '${controller.itemmodelview?.data![index].itemsPrice}',
                      title:
                          '${controller.itemmodelview?.data![index].itemsName}',
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
