import 'package:flutter/material.dart';
import 'package:flutter_rsp/input_item.dart';

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
