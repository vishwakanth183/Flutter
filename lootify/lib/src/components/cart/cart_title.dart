import 'package:flutter/material.dart';

class CartTitle extends StatelessWidget {
  const CartTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      alignment: Alignment.bottomLeft,
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(color: Colors.purple, fontFamily: "Poppins"),
      ),
    );
  }
}
