// ignore_for_file: file_names
import 'package:ecomm/application_layer/ShardFunction/movescreen.dart';
import 'package:ecomm/presentation_layer/resource/linksApi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../domain_layer/controller/controllermain/homeconteoller/homecontroller.dart';
import '../../../../domain_layer/models/AllDataHome.dart';
import '../../../handlingView/handlingview.dart';
import 'newprudect.dart';

class Detalisitem extends StatelessWidget {
  Detalisitem({
    super.key,
  });
  final List<Itemsview>? inf = [];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Homecontroller>(
      builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: SizedBox(
            height: 250,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.viewhomeitemandcato?.itemsview?.length,
              itemBuilder: (BuildContext context, int index) {
                return Newproduc(
                  title: controller
                      .viewhomeitemandcato!.itemsview![index].itemsName
                      .toString(),
                  id: controller.viewhomeitemandcato!.itemsview![index].itemsId!
                      .toInt(),
                  image:
                      '${LinksApi.imagerootcart}/${controller.viewhomeitemandcato!.itemsview![index].itemsImage}',
                  isFavourite: true,
                  price: controller
                      .viewhomeitemandcato!.itemsview![index].itemsPrice
                      .toString(),
                  onTap: () {
                    inf?.clear();
                    inf?.add(controller.viewhomeitemandcato!.itemsview![index]);
                    gotoDetalisitemscreens(inf);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
