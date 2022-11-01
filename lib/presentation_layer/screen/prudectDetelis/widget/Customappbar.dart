// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/resource/AppImageAsset.dart';
import 'package:ecomm/presentation_layer/resource/MangeColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

PreferredSizeWidget customappbar() {
  return AppBar(
    elevation: 0,
    backgroundColor: MangeColor.transparentColor,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
      onPressed: () {
        Get.back();
      },
    ),
    actions: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            const Text(
              "4.5",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 5),
            SvgPicture.asset(AppImageAsset.starSvg),
          ],
        ),
      )
    ],
  );
}
