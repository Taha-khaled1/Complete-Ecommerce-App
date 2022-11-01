// ignore_for_file: file_names
import 'package:ecomm/presentation_layer/resource/ConstantVarible.dart';
import 'package:flutter/material.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: (MangementVarible.kDefaultPaddin)),
      padding: const EdgeInsets.only(top: (MangementVarible.kDefaultPaddin)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(MangementVarible.kDefaultcircle + 15),
          topRight: Radius.circular(MangementVarible.kDefaultcircle + 15),
        ),
      ),
      child: child,
    );
  }
}
