// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../models/special.dart';
import '../widget./specialoffer.dart';

class Catogerysoffers extends StatelessWidget {
  const Catogerysoffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specialoff.length,
        itemBuilder: (BuildContext context, int index) {
          return SpecialOfferCard(
            category: specialoff[index].category,
            image: specialoff[index].image,
            numOfBrands: specialoff[index].numOfBrands,
            press: specialoff[index].press,
          );
        },
      ),
    );
  }
}
