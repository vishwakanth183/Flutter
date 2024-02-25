import 'dart:math';
import 'package:flutter/material.dart';

var randomizer = Random();

var currentImageIndex = 0;

List imagesArray = [
  "https://images.pexels.com/photos/209977/pexels-photo-209977.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/848618/pexels-photo-848618.jpeg?auto=compress&cs=tinysrgb&w=600",
  "https://images.pexels.com/photos/863977/pexels-photo-863977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/63249/stefan-bradl-motogp-racing-racing-bike-63249.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  "https://images.pexels.com/photos/163403/box-sport-men-training-163403.jpeg?auto=compress&cs=tinysrgb&w=600",
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return _HomePageComponent();
  }
}

class _HomePageComponent extends State<HomePage> {
  handleImagePress() {
    setState(() {
      currentImageIndex = randomizer.nextInt(5);
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // Image.network(image)
        children: [
          Image.network(
            imagesArray[currentImageIndex],
            width: 350,
            height: 300,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.change_circle_outlined),
              onPressed: handleImagePress,
              style: ElevatedButton.styleFrom(
                  maximumSize: const Size(200, 80),
                  padding: const EdgeInsets.all(20),
                  foregroundColor: Colors.amberAccent,
                  backgroundColor: Colors.black,
                  textStyle: const TextStyle(fontSize: 16)),
              label: const Text("Change Image"))
        ],
      ),
    );
  }
}
