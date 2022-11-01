import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../resource/MangeColor.dart';

class Newproduc extends StatelessWidget {
  const Newproduc({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.image,
    required this.isFavourite,
    required this.title,
    required this.price,
    required this.id,
    required this.onTap,
  }) : super(key: key);

  final double width, aspectRetio;
  final bool isFavourite;
  final int id;
  final String image;
  final String price, title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        width: width,
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: const EdgeInsets.all((20)),
                  decoration: BoxDecoration(
                    color: MangeColor.kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(image),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: const TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${price.toString()}",
                    style: const TextStyle(
                      fontSize: (18),
                      fontWeight: FontWeight.w600,
                      color: MangeColor.kPrimaryColor,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all((8)),
                      height: (28),
                      width: (28),
                      decoration: BoxDecoration(
                        color: isFavourite
                            ? MangeColor.kPrimaryColor.withOpacity(0.15)
                            : MangeColor.kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: isFavourite
                            ? MangeColor.isfavortActive
                            : MangeColor.isFavoroteOOff,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
