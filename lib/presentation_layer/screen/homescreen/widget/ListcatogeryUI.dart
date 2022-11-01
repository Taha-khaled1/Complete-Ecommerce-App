// ignore_for_file: file_names

import 'package:ecomm/domain_layer/controller/controllermain/homeconteoller/homecontroller.dart';
import 'package:ecomm/presentation_layer/handlingView/handlingview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import '../widget./catogerycard.dart';

class ListcatogeryUI extends StatelessWidget {
  const ListcatogeryUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Homecontroller>(
      builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: SizedBox(
            width: double.infinity,
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.viewhomeitemandcato?.categories!.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 23,
                  ),
                  child: CategoryCard(
                    icon: controller.viewhomeitemandcato!.categories![index]
                        .categoriesImages,
                    press: () {
                      controller.gotoitemscreen(controller
                          .viewhomeitemandcato!.categories![index].categoriesId
                          .toString());
                    },
                    text: controller
                        .viewhomeitemandcato!.categories![index].categoriesName,
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
