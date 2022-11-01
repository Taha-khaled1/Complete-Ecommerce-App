// ignore_for_file: file_names

import 'package:ecomm/application_layer/constant/constant.dart';
import 'package:ecomm/presentation_layer/resource/AppImageAsset.dart';
import 'package:ecomm/domain_layer/controller/controllermain/prudectcontroller/prudectcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'CartCard.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final PrudectController controller = Get.put(PrudectController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: listCart.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {
                      controller.removCart(index, listCart[index].itemsPrice);
                    },
                    background: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFE6E6),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          const Spacer(),
                          SvgPicture.asset(AppImageAsset.dEleteSvg),
                        ],
                      ),
                    ),
                    child: CartCard(
                      listOfItem: listCart,
                      index: index,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
