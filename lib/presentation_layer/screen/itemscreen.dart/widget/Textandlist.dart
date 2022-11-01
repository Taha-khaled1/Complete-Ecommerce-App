// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/resource/MangeColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../application_layer/constant/constant.dart';
import '../../../../domain_layer/controller/controllermain/itemcontroller/Itemcontroller.dart';

class Textandlist extends StatelessWidget {
  const Textandlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Itemcontroller>(
      builder: (controller) {
        return SizedBox(
          height: 45,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesnams.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  controller.swaptext(index);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        categoriesnams[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: controller.selectedIndex == index
                              ? MangeColor.kTextColor
                              : MangeColor.kTextLightColor,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20 / 4),
                        height: 2,
                        width: 30,
                        color: controller.selectedIndex == index
                            ? Colors.black
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
