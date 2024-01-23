import 'package:flutter/material.dart';

import 'game/widget/ai_input.dart';
import 'game/widget/game_result.dart';
import 'game/widget/my_input.dart';


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("가위 바위 보"),
        ),
        body: const RSP(),
      ),
    ),
  );
}

class RSP extends StatefulWidget {
  const RSP({super.key});

  @override
  State<RSP> createState() => _RSPState();
}

class _RSPState extends State<RSP> {
  late bool isEnd;

  @override
  void initState() {
    super.initState();
    isEnd = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: AiInput(isEnd: isEnd,)),
        Expanded(child: GameResult(isEnd: isEnd,)),
        Expanded(child: MyInput(isEnd: isEnd,)),
      ],
    );
  }
}


