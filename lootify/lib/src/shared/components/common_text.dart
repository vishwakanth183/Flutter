import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText({super.key});

  @override
  Widget build(context) {
    return const Center(
      child: Text(
        "Hi lootify",
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    );
  }
}
