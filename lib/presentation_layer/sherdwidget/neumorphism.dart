import 'package:ecomm/presentation_layer/resource/MangeColor.dart';
import 'package:ecomm/presentation_layer/resource/linksApi.dart';
import 'package:flutter/material.dart';

class NeumorphismCard extends StatelessWidget {
  const NeumorphismCard({
    super.key,
    this.isScreenfavorit = false,
    required this.image,
    required this.title,
    required this.price,
  });
  final String image, title, price;
  final bool isScreenfavorit;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 300,
      height: 370,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[500]!,
                offset: const Offset(4, 4),
                blurRadius: 15,
                spreadRadius: 1),
            const BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.blue[300]!.withOpacity(0.2),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        '${LinksApi.imagerootcart}/$image',
                        fit: BoxFit.fill,
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, bottom: 10, right: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ $price',
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MangeColor.kPrimaryColor),
                    ),
                    isScreenfavorit == false
                        ? const SizedBox()
                        : const Icon(
                            Icons.favorite,
                            color: MangeColor.isfavortActive,
                            size: 30,
                          ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
