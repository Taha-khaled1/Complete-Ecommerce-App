// ignore_for_file: file_names
import 'package:flutter/material.dart';

class SectionTiel extends StatelessWidget {
  const SectionTiel({
    Key? key,
    required this.textstyel,
    required this.subtitel,
    required this.titel,
  }) : super(key: key);

  final TextTheme textstyel;
  final String subtitel;
  final String titel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titel,
            style: textstyel.headline6,
          ),
          Text(
            subtitel,
          ),
        ],
      ),
    );
  }
}
