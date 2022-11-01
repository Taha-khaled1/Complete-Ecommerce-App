// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/Infowidget/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../domain_layer/controller/controllermain/prudectcontroller/prudectcontroller.dart';
import '../../../resource/MangeColor.dart';

class IconBtnWithCounterBELL extends StatelessWidget {
  const IconBtnWithCounterBELL({
    Key? key,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String svgSrc;

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: press,
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(deviceInfo.screenWidth * 0.012),
                height: 60,
                width: deviceInfo.localWidth,
                decoration: BoxDecoration(
                  color: MangeColor.kSecondaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(svgSrc),
              ),
              GetX<PrudectController>(
                init: PrudectController(),
                builder: (controller) {
                  if (controller.count.value != 0) {
                    return Positioned(
                      top: -3,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: MangeColor.isfavortActive,
                          shape: BoxShape.circle,
                          border: Border.all(width: 1.5, color: Colors.white),
                        ),
                        child: Center(
                          child: Text(
                            "${controller.count.value}",
                            style: const TextStyle(
                              fontSize: 10,
                              height: 1,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  return const SizedBox();
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
