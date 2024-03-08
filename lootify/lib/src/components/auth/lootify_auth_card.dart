import 'package:flutter/material.dart';

class LootifyAuthCard extends StatelessWidget {
  const LootifyAuthCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 8,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Color.fromARGB(255, 196, 241, 192), Color.fromARGB(255, 231, 242, 226)], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            padding: const EdgeInsets.all(24.0),
            child: child));
  }
}
