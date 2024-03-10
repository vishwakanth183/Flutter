import 'package:flutter/material.dart';
import 'package:lootify/src/components/products/productDetails/product_slider.dart';
import 'package:lootify/src/components/products/productDetails/sample_text.dart';
import 'package:lootify/src/shared/components/ratings.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<StatefulWidget> createState() => ProductDetailComponent();
}

class ProductDetailComponent extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductSlider(),
            Column(
              children: [
                Card(
                  elevation: 5,
                  color: Colors.lightGreenAccent[50],
                  // padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Column(
                      children: [
                        // Name and rating view
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child:  Text(
                                "Product Name",
                                // maxLines: 1,
                                softWrap: true,
                                // overflow: TextOverflow.ellipsis,
                                style:TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w200,
                                        color: Colors.black),
                              ),
                            ),
                            Expanded(
                                child: ProductRating(
                              ratingSize: 25,
                            ))
                          ],
                        ),
        
                        // Price view
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: const Text(
                              "₹ 45.00",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 22,
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.w700),
                            )),
        
                        // Description view
                        Container(
                            alignment: Alignment.topLeft,
                            child:  Column(
                              children: [
                                 Container(alignment: Alignment.center,child: const Text(" Product Description",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)),
                                 const Divider(),
                                const  Text(SampleText.largeText, textAlign: TextAlign.justify,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w200),),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
