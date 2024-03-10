import 'package:flutter/material.dart';
import 'package:lootify/src/shared/components/cart_item.dart';

class Product {
  final int id; // Or appropriate identifier based on your data structure
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

class CartList extends StatelessWidget {
  CartList({super.key});

  final cartItemsList = [1, 2];
  final Color productNameColor = Colors.black;
  final Color productPriceColor = const Color.fromARGB(255, 13, 56, 2);

  static const sampleUrl =
      "https://images.pexels.com/photos/4041392/pexels-photo-4041392.jpeg?auto=compress&cs=tinysrgb&w=600";

  final cartList = [
    const Product(id: 1, name: "Product 1", price: 19.99, imageUrl: sampleUrl),
    const Product(id: 2, name: "Product 2", price: 24.50, imageUrl: sampleUrl),
  ];

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: cartItemsList.length,
    //     itemBuilder: (ctx, index) {
    //       return  CartItem(index: index);
    //     });

    return Column(
      children: [
        // cartList.map((product,index) => CartItem(index: index)).toList();
        CartItem(index: 1),
        CartItem(index: 2),
        CartItem(index: 3),
        // CartItem(index: 4),
        // CartItem(index: 5),
      ],
    );
  }
}
