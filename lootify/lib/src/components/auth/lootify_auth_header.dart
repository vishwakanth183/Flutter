import 'package:flutter/material.dart';

class LootifyAuthHeader extends StatelessWidget {
  const LootifyAuthHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.white70.withOpacity(0.2),
          offset: const Offset(0.1, 0.1),
          blurRadius: 12.0,
          spreadRadius: 1,
        ),
      ]),
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(bottom: 20),
      child: Image.asset(
        'assets/penguin.png',
        height: 100,
        width: 100,
        fit: BoxFit.contain,
      ),
    );
  }
}
