import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lootify/src/components/home/home_reusable/image_text.dart';

final List trendingImages = [
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600"
];

class Trending extends StatelessWidget {
  const Trending({super.key});

  @override
  Widget build(context) {
    return Container(
      height: trendingImages.length * 100,
      decoration: const BoxDecoration(color: Colors.white),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: Text(
                "Trending Categories",
                style: GoogleFonts.righteous(),
              ),
            ),
          ),
          Center(
            child: Wrap(
                children: trendingImages
                    .map((e) => CustomImageElement(imageUrl: e))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
