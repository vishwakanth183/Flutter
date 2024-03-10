import 'package:flutter/material.dart';
import 'package:lootify/src/components/cart/cart_list.dart';
import 'package:lootify/src/components/cart/cart_summary.dart';
import 'package:lootify/src/components/cart/cart_title.dart';
import 'package:lootify/src/components/cart/horizontal_product_list.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CartTitle(title: "Your Cart"),
              CartList(),
            const CartTitle(title: "Cart Summary"),
              const CartSummary(),
              const CartTitle(title: "Frequently bought together"),
              const HorizontalProductList(),
              const CartTitle(title: "You may also like"),
              const HorizontalProductList(),
            ],
          ),
        ));
  }
}
