// ignore_for_file: file_names

import 'package:ecomm/application_layer/constant/constant.dart';
import 'package:ecomm/domain_layer/controller/controllermain/prudectcontroller/prudectcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/MangeColor.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    backgroundColor: MangeColor.kTextWahtcolor,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: Colors.black,
      ),
      onPressed: () {},
    ),
    centerTitle: true,
    title: Column(
      children: [
        const Text(
          "Your Cart",
          style: TextStyle(color: Colors.black),
        ),
        GetBuilder<PrudectController>(
          builder: (controller) {
            return Text(
              "${listCart.length} items",
              style: Theme.of(context).textTheme.titleMedium,
            );
          },
        ),
      ],
    ),
  );
}
