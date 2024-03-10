import 'package:flutter/material.dart';
import 'package:lootify/src/shared/components/product_item.dart';

class HorizontalProductList extends StatelessWidget {
  const HorizontalProductList({super.key});

  @override
  Widget build(BuildContext context) {
    // final List horizontalItems = [1,2,3,4,5,6,7,8];
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (cxt, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(height: 100, width: 200, child: ProdutctItem()),
            );
          }),
    );
  }
}
