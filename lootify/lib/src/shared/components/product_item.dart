import 'package:flutter/material.dart';
import 'package:lootify/src/components/products/productDetails/product_details.dart';
import 'package:lootify/src/shared/components/ratings.dart';

class ProdutctItem extends StatelessWidget {
  const ProdutctItem({super.key});

  final Color productsBgColor = const Color.fromARGB(255, 13, 57, 95);
  final Color productNameColor = Colors.white;
  final Color productPriceColor = Colors.amber;
  final Color addButtonBgColor = const Color.fromARGB(255, 98, 222, 171);

  final sampleUrl =
      "https://images.pexels.com/photos/4041392/pexels-photo-4041392.jpeg?auto=compress&cs=tinysrgb&w=600";

  @override
  Widget build(BuildContext context) {
    handleFavourite() {}
    handleProductPress() {
      // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const ProductDetails()));
      showModalBottomSheet(
        useSafeArea: true,
        context: context,
        isScrollControlled: true, // Allow scrolling if content is large
        builder: (BuildContext context) => const ProductDetails(),
      );
    }

    return InkWell(
      onTap: () {
        handleProductPress();
      },
      child: Card(
          color: productsBgColor,
          margin: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Product name",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: productNameColor),
                      ),
                    ),
                    IconButton(
                        onPressed: handleFavourite(),
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ))
                  ],
                ),
              ),
              Expanded(
                child: Image.network(
                  sampleUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "₹231.00",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w200,
                          color: productPriceColor),
                    ),
                    const Expanded(child: ProductRating())
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: ElevatedButton(
                      style: ElevatedButtonTheme.of(context).style!.copyWith(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 5)),
                          backgroundColor:
                              MaterialStatePropertyAll(addButtonBgColor)),
                      onPressed: handleFavourite,
                      child: const Text("Add +")),
                ),
              )
            ],
          )),
    );
  }
}
