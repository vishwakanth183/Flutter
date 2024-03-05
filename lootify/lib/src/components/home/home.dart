import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lootify/src/components/home/explore/explore_list.dart';
import 'package:lootify/src/components/home/home_reusable/blueprint_category.dart';
import 'package:lootify/src/components/home/home_reusable/category_list.dart';
import 'package:lootify/src/components/home/slider/home_slider.dart';
import 'package:lootify/src/components/home/lootify_categories/lootify_category.dart';

List<Widget> getLootifyCategories(List<Category> categories) {
  return categories
      .map((category) => LootifyCategoryTemplate(
            trendingImages: category.images,
            categoryName: category.name,
          ))
      .toList();
}

const sampleImages = [
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1633525/pexels-photo-1633525.jpeg?auto=compress&cs=tinysrgb&w=600"
];

List<Widget> dynamic = getLootifyCategories(categoryList);

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Widget> categories = [
    const HomeSlider(),
    const ExploreListSection(),
    const LootifyCategoryTemplate(trendingImages: sampleImages, categoryName: "Trending"),
    const LootifyCategoryTemplate(trendingImages: sampleImages, categoryName: "Shoes"),
    const LootifyCategoryTemplate(trendingImages: sampleImages, categoryName: "Bags"),
    const LootifyCategoryTemplate(trendingImages: sampleImages, categoryName: "Mens collection"),
    const LootifyCategoryTemplate(trendingImages: sampleImages, categoryName: "Womens collection"),

    // getLootifyCategories(categoryList)
  ];

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Lootify Home",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return categories[index];
          }),
    );
  }
}
