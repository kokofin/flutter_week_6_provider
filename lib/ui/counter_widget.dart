import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  
  final bool isSwitchedOn;

  const CounterWidget({super.key,  required this.isSwitchedOn});

  @override
  Widget build(BuildContext context) {
    final color = isSwitchedOn ? Colors.lightGreenAccent : Colors.redAccent;
    return Container(
      width: 200,
      height: 200,
      color: color,
   
    );
  }
}
