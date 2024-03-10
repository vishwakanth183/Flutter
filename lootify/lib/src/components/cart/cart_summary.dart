import 'package:flutter/material.dart';

class CartSummary extends StatelessWidget{
  const CartSummary({super.key});


  Widget summaryRow(String rowname, int rowValue){
return Column(
  children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(rowname),
        Text("₹${rowValue.toStringAsFixed(2)}")
      ],
    ),
    const Divider()
  ],
);
  }
  
  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // const CartTitle(title: "Cart Summary"),
             summaryRow("Total", 8000),
             summaryRow("Tax", 500),
             summaryRow("Discount", 1000),
             summaryRow("Sub total", 7500),
          ],
        ),
      ),
    );
  }
}