import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  const CustomDotIndicator({super.key, 
    required this.itemCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) => _buildDot(index)),
    );
  }

  Widget _buildDot(int index) {
    final isSelected = index == currentIndex;
    final color = isSelected ? Colors.blue : Colors.grey;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
