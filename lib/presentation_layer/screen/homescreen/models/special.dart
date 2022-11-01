import 'package:flutter/material.dart';

class SpecialOffer {
  const SpecialOffer({
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  });

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;
}

List<SpecialOffer> specialoff = [
  SpecialOffer(
    image: "assets/images/Image Banner 2.png",
    category: "Smartphone",
    numOfBrands: 18,
    press: () {},
  ),
  SpecialOffer(
    image: "assets/images/Image Banner 3.png",
    category: "Fashion",
    numOfBrands: 24,
    press: () {},
  ),
  SpecialOffer(
    image: "assets/images/Image Banner 2.png",
    category: "Smartphone",
    numOfBrands: 18,
    press: () {},
  ),
];
