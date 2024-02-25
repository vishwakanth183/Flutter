import 'package:flutter/material.dart';
import 'package:lootify/src/shared/components/common_gradient.dart';

class Splash extends StatelessWidget {
  Splash({super.key});

  final List<Color> colorsArray = [Colors.green, Colors.greenAccent];

  @override
  Widget build(context) {
    return CustomGradient(colorsArray: colorsArray);
  }
}
