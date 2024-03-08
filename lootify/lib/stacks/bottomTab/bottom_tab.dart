import 'package:flutter/material.dart';
import 'package:lootify/src/components/auth/signup/signup.dart';
import 'package:lootify/src/components/home/home.dart';

class LootifyBottomTab extends StatefulWidget {
  const LootifyBottomTab({super.key});
  @override
  State<StatefulWidget> createState() => LootifyBottomComponent();
}

class LootifyBottomComponent extends State<LootifyBottomTab> {
  int _currentPageIndex = 0;
  Widget currentWidget = HomePage();

  void _handleWidgetChange(int index) {
    if (index == 0) {
      currentWidget = HomePage();
    } else if (index == 1) {
      currentWidget = const Signup();
    } else if (index == 2) {
      currentWidget = HomePage();
    } else {
      currentWidget = const Signup();
    }
  }

  void _handleLootifyBottomTap(int index) {
    setState(() {
      _currentPageIndex = index;
      _handleWidgetChange(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentWidget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _handleLootifyBottomTap,
        currentIndex: _currentPageIndex,
        backgroundColor: Colors.amber,
        selectedItemColor: const Color.fromARGB(255, 8, 42, 69),
        unselectedItemColor: Colors.grey,
        elevation: 5,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopify_rounded), label: "Products"),
          // BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile")
        ],
      ),
    );
  }
}
