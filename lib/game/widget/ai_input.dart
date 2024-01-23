import 'package:flutter/material.dart';
import 'package:flutter_rsp/game/enum.dart';
import 'package:flutter_rsp/game/widget/input_card.dart';
import 'package:flutter_svg/svg.dart';

class AiInput extends StatelessWidget {
  const AiInput({required this.isEnd, required this.aiInput, super.key});

  final bool isEnd;
  final InputItem aiInput;

  @override
  Widget build(BuildContext context) {
    return getAiInput();
  }

  Widget getAiInput() {
    if (isEnd) {
      return Center(child: InputCard(imagePath: aiInput.path, isAi: true));
    } else {
      return Center(
        child: Container(
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 5),
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              "?",
              style: TextStyle(fontSize: 42, color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }
  }
}
