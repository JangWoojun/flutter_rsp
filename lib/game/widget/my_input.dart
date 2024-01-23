import 'package:flutter/material.dart';
import 'package:flutter_rsp/game/enum.dart';

import 'input_card.dart';

class MyInput extends StatelessWidget {
  const MyInput({required this.isEnd, required this.callback, this.userInput, super.key});
  final bool isEnd;
  final Function(InputItem) callback;
  final InputItem? userInput;

  @override
  Widget build(BuildContext context) {
    if (isEnd) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox.shrink(),
          InputCard(imagePath: userInput!.path, isAi: false),
          SizedBox.shrink(),
        ],
      ) ;
    }
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: getInputs(callback),
    );
  }

  List<Widget> getInputs(Function(InputItem) callback) {
    return InputItem.values
        .map(
          (type) => InkWell(onTap: () => callback.call(type), child: InputCard(imagePath: type.path, isAi: false)),
        )
        .toList();
  }
}
