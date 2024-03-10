import 'package:flutter/material.dart';
import 'package:lootify/src/shared/components/product_item.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<StatefulWidget> createState() => ProductListComponent();
}

class ProductListComponent extends State<ProductList> {


  final _searchController = TextEditingController(text: "Search by product name");


@override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lootify"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SearchBar(
                    textStyle: MaterialStatePropertyAll(Theme.of(context).textTheme.bodyMedium),
                    autoFocus: false,
                    controller: _searchController,
                    elevation: const MaterialStatePropertyAll(6),
                    leading: const Icon(Icons.search),
                    backgroundColor: MaterialStatePropertyAll(Colors.green[50]),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.filter_alt,
                    size: 32,
                  ))
            ],
          ),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 30, left: 10, right: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30),
              children: const [
                ProdutctItem(),
                ProdutctItem(),
                ProdutctItem(),
                ProdutctItem(),
                ProdutctItem(),
                ProdutctItem(),
                ProdutctItem(),
                ProdutctItem(),
                ProdutctItem(),
                ProdutctItem(),
                ProdutctItem(),
                ProdutctItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
