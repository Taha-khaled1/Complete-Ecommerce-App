// ignore_for_file: file_names
import 'package:ecomm/domain_layer/controller/controllermain/prudectcontroller/prudectcontroller.dart';
import 'package:ecomm/presentation_layer/resource/linksApi.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../resource/MangeColor.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    Key? key,
    required this.index,
    required this.listOfItem,
  }) : super(key: key);

  final List listOfItem;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: const EdgeInsets.all((10)),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(
                  '${LinksApi.imagerootcart}/${listOfItem[index].itemsImage}'),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              listOfItem[index].itemsName.toString(),
              style: const TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            GetBuilder<PrudectController>(
              builder: (controller) {
                return Text.rich(
                  TextSpan(
                    text: "\$${listOfItem[index].itemsPrice}",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: MangeColor.kPrimaryColor),
                    children: [
                      TextSpan(
                          text: " x${2}",
                          style: Theme.of(context).textTheme.bodyLarge),
                    ],
                  ),
                );
              },
            )
          ],
        )
      ],
    );
  }
}
