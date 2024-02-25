import 'package:flutter/material.dart';
import 'package:lootify/src/shared/components/common_text.dart';

class CustomGradient extends StatelessWidget {
  const CustomGradient({super.key, required this.colorsArray});

  final List<Color> colorsArray;

  @override
  Widget build(context) {
    return Container(
        decoration:  BoxDecoration(
            gradient: LinearGradient(colors: colorsArray, begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: const CommonText("Lootify"));
  }
}
