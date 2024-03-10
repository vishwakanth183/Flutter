import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
   CartItem({super.key, required this.index});

   final int index;

  final cartItemsList = [1, 2];
  final Color productNameColor = Colors.black;
  final Color productPriceColor =const Color.fromARGB(255, 13, 56, 2);



  final sampleUrl =
      "https://images.pexels.com/photos/4041392/pexels-photo-4041392.jpeg?auto=compress&cs=tinysrgb&w=600";

  @override
  Widget build(BuildContext context) {

    return Dismissible(
            key: ValueKey(index),
            child: Card(
              color: Colors.grey[50],
                child: Row(
              children: [
            
                // Image Section
                SizedBox(
                  height: 100,
                  child: Image.network(sampleUrl,height: 100,width: 120,fit: BoxFit.cover,),
                ),
            
                // Name and price section
                Container(
                  width: 130,
                  margin: const EdgeInsets.all(20),
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const Text(
                      "Product name",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                        "₹231.00",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w200, color: productPriceColor),
                      ),
                  ],),
                ),
            
                // Add/Edit Section
                Row(children: [
                  // decrease button
                  IconButton(onPressed: (){}, icon: const Icon(Icons.remove_circle)),
                  // Amount text
                  const Text("1"),
                  // Increase button
                  IconButton(onPressed: (){}, icon: const Icon(Icons.add_circle)),
                ],)
              ],
            )),
          );
  }
}
