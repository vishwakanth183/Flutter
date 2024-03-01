import 'package:flutter/material.dart';
import 'package:lootify/src/components/home/home_reusable/category_header.dart';
import 'package:lootify/src/components/home/home_reusable/image_text.dart';

class LootifyCategoryTemplate extends StatelessWidget {
  final List<String> trendingImages;
  final String categoryName;
  const LootifyCategoryTemplate(
      {super.key, required this.trendingImages, required this.categoryName});

  @override
  Widget build(context) {
    return Container(
      height: trendingImages.length * 100,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Center(
              child: CategoryHeader(
                titleName: categoryName,
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
