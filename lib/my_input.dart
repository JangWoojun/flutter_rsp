import 'package:flutter/material.dart';
import 'package:flutter_rsp/input_item.dart';

import 'input_card.dart';

class MyInput extends StatelessWidget {
  const MyInput({required this.isEnd, super.key});

  final bool isEnd;

  @override
  Widget build(BuildContext context) {
    if (isEnd) {
      return const Placeholder();
    }
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: getInputs(),
    );
  }

  List<Widget> getInputs() {
    return InputItem.values
        .map(
          (imagePath) => InputCard(imagePath: imagePath.path, isAi: false),
        )
        .toList();
  }
}
