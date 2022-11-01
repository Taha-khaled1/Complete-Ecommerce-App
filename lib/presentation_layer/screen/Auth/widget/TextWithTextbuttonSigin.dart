// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/MangeColor.dart';

class TextWithTextbuttonSigin extends StatelessWidget {
  const TextWithTextbuttonSigin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "25".tr,
            style: textstyel.headline5!.copyWith(
              color: MangeColor.blackcolor,
            ),
          ),
          TextButton(
            onPressed: (() {
              Get.toNamed('Sigin');
            }),
            child: Text(
              "t".tr,
              style: textstyel.headline6!
                  .copyWith(color: MangeColor.authColorButton),
            ),
          ),
        ],
      ),
    );
  }
}
