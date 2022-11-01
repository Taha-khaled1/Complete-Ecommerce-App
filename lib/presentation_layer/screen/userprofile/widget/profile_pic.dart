import 'package:ecomm/presentation_layer/resource/AppImageAsset.dart';
import 'package:ecomm/presentation_layer/resource/MangeColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/people.png"),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(
                      color: MangeColor.kTextWahtcolor,
                    ),
                  ),
                  backgroundColor: MangeColor.kTextWahtcolor,
                ),
                onPressed: () {},
                child: SvgPicture.asset(AppImageAsset.camraSvg),
              ),
            ),
          )
        ],
      ),
    );
  }
}
