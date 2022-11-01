import 'package:ecomm/domain_layer/controller/controllermain/prudectcontroller/prudectcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../domain_layer/models/Favoritmodel.dart';
import '../../resource/ConstantVarible.dart';
import '../../resource/MangeColor.dart';
import '../../sherdwidget/neumorphism.dart';

class Favorit extends StatelessWidget {
  Favorit({Key? key}) : super(key: key);
  final PrudectController x = Get.put(PrudectController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MangeColor.isFavoroteOOff,
      appBar: AppBar(
        backgroundColor: MangeColor.isFavoroteOOff,
        title: const Text(
          'your favorites',
          style: TextStyle(
            fontSize: 18,
            color: MangeColor.blackcolor,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: MangeColor.blackcolor,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: GridView.builder(
          gridDelegate: MangementVarible.silvergraidviewseetings,
          itemCount: isfav.length,
          itemBuilder: (BuildContext context, int index) {
            return NeumorphismCard(
              isScreenfavorit: true,
              image: isfav[index].imag,
              price: isfav[index].price,
              title: isfav[index].title,
            );
          },
        ),
      ),
    );
  }
}
