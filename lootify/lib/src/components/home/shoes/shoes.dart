import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lootify/src/components/home/home_reusable/image_text.dart';

final List shoeImages = [
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600"
];

class Shoes extends StatelessWidget {
  const Shoes({super.key});

  @override
  Widget build(context) {
    return Container(
      height: shoeImages.length * 100,
      decoration: const BoxDecoration(color: Colors.white),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: Text(
                "Shoes Categories",
                style: GoogleFonts.righteous(),
              ),
            ),
          ),
          Center(
            child: Wrap(
                children: shoeImages
                    .map((e) => CustomImageElement(imageUrl: e))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
