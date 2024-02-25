import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  const CommonText(this.text,{super.key});

  final String text;

  @override
  Widget build(context) {
    return  Center(
      child: Text(
       text,
        style: const TextStyle(color: Colors.white, fontSize: 28),
      ),
    );
  }
}
