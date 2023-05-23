// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../../../resource/listmodelonbording.dart';

class SectionOnboardenter extends StatelessWidget {
  const SectionOnboardenter(
      {Key? key,
      required this.index,
      required this.width1,
      required this.width2})
      : super(key: key);
  final int index;
  final double width1;
  final double width2;
  @override
  Widget build(BuildContext context) {
    TextTheme textstyel = Theme.of(context).textTheme;
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(onBoardingList[index].image.toString()),
          Column(
            children: [
              SizedBox(
                width: width1,
                child: Text(
                  onBoardingList[index].title.toString(),
                  style: textstyel.headlineMedium!,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: width2,
                child: Text(
                  onBoardingList[index].body.toString(),
                  style: textstyel.titleLarge!,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
