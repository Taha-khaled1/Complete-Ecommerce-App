// ignore_for_file: file_names
import 'package:ecomm/domain_layer/controller/controllermain/homeconteoller/homecontroller.dart';
import 'package:ecomm/domain_layer/controller/controllermain/prudectcontroller/prudectcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../resource/MangeColor.dart';
import '../../../sherdwidget/Showmodelbuttonsheet.dart';
import '../../../sherdwidget/custombutten.dart';

class CheckoutCard extends GetView<Homecontroller> {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: (15),
        horizontal: (30),
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  height: (40),
                  width: (40),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                const Spacer(),
                const Text("Add voucher code"),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: MangeColor.kTextColor,
                )
              ],
            ),
            const SizedBox(height: (20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GetBuilder<PrudectController>(
                  builder: (controller) {
                    return Text.rich(
                      TextSpan(
                        text: "Total:\n",
                        children: [
                          TextSpan(
                            text: "\$ ${controller.whatprice()}",
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Buttenwidget(
                  color: MangeColor.kPrimaryColor,
                  haigh: 80,
                  width: 300,
                  text: "Check Out",
                  press: () async {
                    await showmodelbuttntracklive(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
