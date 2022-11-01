// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../../../resource/MangeColor.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: (20)),
      child: Row(
        children: [
          ...List.generate(
            MangeColor().gradintBeatu.length,
            (index) => ColorDot(
              color: MangeColor().gradintBeatu[index],
              isSelected: index == selectedColor,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {},
          ),
          const SizedBox(width: (20)),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      padding: const EdgeInsets.all((8)),
      height: (40),
      width: (40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
            color: isSelected ? MangeColor.kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
