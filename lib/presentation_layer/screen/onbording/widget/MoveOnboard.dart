// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../application_layer/ShardFunction/sherdfunction.dart';
import '../../../sherdwidget/custombutten.dart';

class MoveOnboard extends StatelessWidget {
  const MoveOnboard({
    Key? key,
    required this.count,
    required this.control,
  }) : super(key: key);

  final int count;
  final PageController control;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: InfoWidget(
          builder: (context, deviceInfo) {
            return Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Buttenwidget(
                  haigh: 75,
                  width: deviceInfo.localWidth * 0.83,
                  color: Colors.blue,
                  text: '8'.tr,
                  press: () {
                    funonboard(count, control);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
