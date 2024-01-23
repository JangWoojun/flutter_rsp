import 'package:flutter/material.dart';

class AiInput extends StatelessWidget {
  const AiInput({required this.isEnd, super.key});
  final bool isEnd;

  @override
  Widget build(BuildContext context) {
    if (isEnd) {
      return Scaffold();
    } else {
      return Row(
        children: [],
      );
    }
  }


}
