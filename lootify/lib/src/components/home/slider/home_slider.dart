import 'dart:math';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

var randomizer = Random();
int currentImageIndex = 0;

final List<String> imagesArray = [
  "https://images.pexels.com/photos/1649771/pexels-photo-1649771.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1097456/pexels-photo-1097456.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/786003/pexels-photo-786003.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/163403/box-sport-men-training-163403.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/1536619/pexels-photo-1536619.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/256450/pexels-photo-256450.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/209841/pexels-photo-209841.jpeg?auto=compress&cs=tinysrgb&w=600"
];

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderComponent();
}

class _HomeSliderComponent extends State<HomeSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      // decoration: BoxDecoration(boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(0.2),
      //     offset: const Offset(2.0, 2.0),
      //     blurRadius: 10.0,
      //     spreadRadius: 2.0,
      //   ),
      // ]),
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
                      currentImage,
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
    );
  }
}
