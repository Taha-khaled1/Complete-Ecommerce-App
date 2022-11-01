// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../resource/AppImageAsset.dart';
import '../screen/Auth/widget/imagepostion.dart';

class TopsectionAuthImages extends StatelessWidget {
  const TopsectionAuthImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxHeight: 350, minHeight: 300),
          child: Image.asset(
            AppImageAsset.authBackground,
            width: 1000,
            fit: BoxFit.fill,
          ),
        ),
        images(40.0, 0.0, AppImageAsset.authImage1),
        images(200.0, 0.0, AppImageAsset.authImage2),
        images(300.0, 80.0, AppImageAsset.authImage3),
      ],
    );
  }
}
