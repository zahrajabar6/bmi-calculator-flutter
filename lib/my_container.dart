import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key, required this.color});

  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
    );
  }
}
