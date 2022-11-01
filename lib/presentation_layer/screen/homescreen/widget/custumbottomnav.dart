import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../domain_layer/controller/controllermain/homeconteoller/homecontroller.dart';

class Custombottomnav extends StatelessWidget {
  const Custombottomnav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Homecontroller>(
      builder: (controller) {
        return CircleBottomNavigationBar(
          initialSelection: controller.selectedIndex,
          circleColor: Colors.purple,
          activeIconColor: Colors.white,
          inactiveIconColor: Colors.grey,
          tabs: [
            TabData(
              icon: Icons.home,
              iconSize: 25, // Optional
              title: controller.selectedIndex == 0 ? 'Home' : null, // Optional
              fontSize: 12, // Optional
            ),
            TabData(
                icon: Icons.favorite,
                title: controller.selectedIndex == 1 ? 'favorite' : null),
            TabData(
                icon: Icons.settings,
                title: controller.selectedIndex == 2 ? 'Seatings' : null),
          ],
          onTabChangedListener: (position) {
            controller.botoomselectindex(position);
            controller.curentpagebotomnav(controller.selectedIndex);
          },
        );
      },
    );
  }
}
