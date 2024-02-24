import 'package:flutter/material.dart';
import 'package:lootify/src/shared/components/common_text.dart';

class CustomGradient extends StatelessWidget {
  const CustomGradient({super.key});

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 37, 164, 32),
          Color.fromARGB(255, 181, 220, 200),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: const CommonText());
  }
}
