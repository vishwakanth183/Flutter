import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key, this.ratingSize = 12});

  final double ratingSize;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.6,
      child: Container(
        // width: 5,
        alignment: Alignment.centerRight,
        // decoration: BoxDecoration(color: Colors.amber),
        child: RatingBarIndicator(
          rating: 3.7, // The rating value to display
          itemCount: 5, // Number of stars in the rating bar
          itemBuilder: (context, index) => Icon(
            Icons.star,
            color: Colors.amber,
            size: ratingSize, // Customize star color
          ),
          itemSize: ratingSize,
        ),
      ),
    );
  }
}
