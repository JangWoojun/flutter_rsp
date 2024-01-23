import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rsp/game/enum.dart';

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
  late InputItem aiInput;
  InputItem? userInput;

  @override
  void initState() {
    super.initState();
    isEnd = false;
    setAiInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: AiInput(isEnd: isEnd, aiInput: aiInput,)),
        Expanded(child: GameResult(isEnd: isEnd, result: getResult(), callback: reset,)),
        Expanded(child: MyInput(isEnd: isEnd, callback: setUserInput, userInput: userInput,)),
      ],
    );
  }

  void reset() {
    setState(() {
      isEnd = false;
      setAiInput();
    });
  }

  void setUserInput(InputItem newUserInput) {
    setState(() {
      isEnd = true;
      userInput = newUserInput;
    });
  }

  void setAiInput() {
    final random = Random();
    aiInput = InputItem.values[random.nextInt(3)];
  }

  Result? getResult() {
    if (userInput == null) return null;

    switch (userInput!) {
      case InputItem.rock:
        switch (aiInput) {
          case InputItem.rock:
            return Result.draw;
          case InputItem.scissors:
            return Result.playerWin;
          case InputItem.paper:
            return Result.cpuWin;
        }
      case InputItem.scissors:
        switch (aiInput) {
          case InputItem.rock:
            return Result.cpuWin;
          case InputItem.scissors:
            return Result.draw;
          case InputItem.paper:
            return Result.playerWin;
        }
      case InputItem.paper:
        switch (aiInput) {
          case InputItem.rock:
            return Result.playerWin;
          case InputItem.scissors:
            return Result.cpuWin;
          case InputItem.paper:
            return Result.draw;
        }
    }
  }
}


