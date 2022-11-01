// ignore_for_file: file_names

import 'package:ecomm/domain_layer/controller/controllermain/prudectcontroller/prudectcontroller.dart';
import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:ecomm/presentation_layer/resource/MangeColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../sherdwidget/custombutten.dart';
import 'Colordots.dart';
import 'TopRoundedContainer.dart';

class Prudectdescrbtion extends StatelessWidget {
  Prudectdescrbtion({Key? key, required this.infoitem}) : super(key: key);
  final List infoitem;
  final PrudectController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return InfoWidget(
      builder: (context, deviceInfo) {
        return Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              infoitem[0].itemsName.toString(),
              style: textTheme.headline4,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.all((15)),
                width: (64),
                decoration: const BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                ),
                child: GetBuilder<PrudectController>(
                  builder: (controller) {
                    return InkWell(
                      onTap: () async {
                        await controller.putFavorit(infoitem);
                      },
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: controller
                            .whatColor(infoitem[0].itemsId.toString()),
                        height: (16),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: (20),
                right: (64),
              ),
              child: Text(
                infoitem[0].itemsDescrbtion.toString(),
                style: textTheme.subtitle1,
                maxLines: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: (20),
                vertical: 10,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      "\$ ${infoitem[0].itemsPrice}",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: MangeColor.kPrimaryColor),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ),
            ),
            const ColorDots(),
            TopRoundedContainer(
              color: Colors.white,
              child: Buttenwidget(
                  color: Colors.green,
                  haigh: 75,
                  width: deviceInfo.localWidth * 0.6,
                  press: () async {
                    controller.addTocartFunction(infoitem);
                    //Sqldb.fordeletedatabase();
                  },
                  text: 'Add to cart'),
            ),
          ],
        );
      },
    );
  }
}
