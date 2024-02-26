import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.only(top: 30, bottom: 30),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(2.0, 2.0),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ),
          ]),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  // autoPlayAnimationDuration: const Duration(seconds: 30),
                  enableInfiniteScroll: true,
                  enlargeFactor: double.infinity,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentImageIndex = index;
                    });
                  },
                ),
                items: imagesArray.map((currentImage) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          imagesArray[currentImageIndex],
                          fit: BoxFit.cover,
                          width: 350,
                          alignment: Alignment.center,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Positioned(
                bottom: 10,
                child: DotsIndicator(
                  onTap: (position) {
                    setState(() {
                      currentImageIndex = (position).toInt();
                    });
                  },
                  dotsCount: imagesArray.length,
                  position: currentImageIndex.toDouble(),
                  decorator: const DotsDecorator(
                    activeColor: Colors.blue,
                    size: Size.square(8.0),
                    activeSize: Size(16.0, 8.0),
                    spacing: EdgeInsets.symmetric(horizontal: 4.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
