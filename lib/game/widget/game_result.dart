import 'package:flutter/material.dart';

import '../enum.dart';

class GameResult extends StatelessWidget {
  const GameResult({required this.isEnd, this.result, required this.callback, super.key});

  final bool isEnd;
  final Result? result;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    if (isEnd) {
      return Center(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Text(
              result!.displayString,
              style: const TextStyle(
                  color: Colors.blue, fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          GestureDetector(
            onTap: () => callback.call(),
            child: Container(
              margin: const EdgeInsets.only(top: 60),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "다시하기",
                style: TextStyle(fontSize: 22, color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ));
    }
    return const Center(
      child: Text(
        "손 모양을 선택해주세요",
        style: TextStyle(
            color: Colors.blue, fontSize: 26, fontWeight: FontWeight.bold),
      ),
    );
  }
}
