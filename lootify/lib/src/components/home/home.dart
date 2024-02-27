import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lootify/src/components/home/explore_list.dart';
import 'package:lootify/src/components/home/home_slider.dart';
import 'package:lootify/src/components/home/shoes/shoes.dart';
import 'package:lootify/src/components/home/trending/trending.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var randomizer = Random();
  int currentImageIndex = 0;

  final List<String> imagesArray = [
    "https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/848618/pexels-photo-848618.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/863977/pexels-photo-863977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/63249/stefan-bradl-motogp-racing-racing-bike-63249.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/163403/box-sport-men-training-163403.jpeg?auto=compress&cs=tinysrgb&w=600",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Lootify Home",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [],
        body: ListView(children: const [
          SizedBox(height: 10),
          HomeSlider(),
          ExploreListSection(),
          SizedBox(
            height: 10,
          ),
          Trending(),
        ]),
      ),
    );
  }
}
