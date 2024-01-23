import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InputCard extends StatelessWidget {
  const InputCard({
    required this.imagePath,
    required this.isAi,
    super.key,
  });

  final String imagePath;
  final bool isAi;

  @override
  Widget build(BuildContext context) {
    if (isAi) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 5),
            borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(
          imagePath,
          width: 100,
          height: 100,
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        width: 100,
        height: 100,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 5),
            borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(
          imagePath,
          width: 100,
          height: 100,
        ),
      );
    }
  }
}
