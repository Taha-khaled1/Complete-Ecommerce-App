// ignore_for_file: file_names
import 'package:ecomm/application_layer/constant/namedrouts.dart';
import 'package:ecomm/presentation_layer/Infowidget/models/device_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../resource/AppImageAsset.dart';
import '../screen/homescreen/widget/IconBtnWithCounterBELL.dart';
import '../screen/homescreen/widget/icon_btn_with_counter.dart';
import '../screen/homescreen/widget/search.dart';

class Bellandnotfcation extends StatelessWidget {
  const Bellandnotfcation({
    required this.deviceInfo,
    Key? key,
  }) : super(key: key);
  final DeviceInfo deviceInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: deviceInfo.localWidth * 0.6,
          child: const SearchField(),
        ),
        SizedBox(
          width: deviceInfo.localWidth * 0.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: deviceInfo.localWidth * 0.15,
                child: IconBtnWithCounterBELL(
                  press: () {
                    Get.toNamed(Namedrouts().addToCartScreen);
                  },
                  svgSrc: AppImageAsset.cartSvg,
                ),
              ),
              SizedBox(
                width: deviceInfo.localWidth * 0.15,
                child: IconBtnWithCounter(
                  press: () {},
                  svgSrc: AppImageAsset.billSvg,
                  numOfitem: 0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
