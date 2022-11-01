import 'package:ecomm/presentation_layer/resource/MangeColor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../homescreen/models/userprofile.dart';
import 'widget/profile_pic.dart';
import 'widget/profilemenue.dart';

class Userprofile extends StatelessWidget {
  const Userprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MangeColor.isFavoroteOOff,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MangeColor.isFavoroteOOff,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const ProfilePic(),
            const SizedBox(
              height: 40,
            ),
            ...List.generate(
                userprfilemenue.length,
                (int index) => ProfileMenu(
                    icon: userprfilemenue[index].icon,
                    text: userprfilemenue[index].text,
                    press: userprfilemenue[index].press),
                growable: true),
          ],
        ),
      ),
    );
  }
}
