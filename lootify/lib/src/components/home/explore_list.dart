import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreListSection extends StatelessWidget {
  const ExploreListSection({super.key});

  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      height: 130,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 14, 30, 80),
        Color.fromARGB(255, 32, 40, 124)
      ], begin: Alignment.centerLeft, end: Alignment.centerRight)),
      child: ElevatedButton(
        onPressed: () {},
        // style: const ButtonStyle(foregroundColor: Colors.black12),
        child: Text(
          "Explore the wonders of lootify >>",
          // style: TextStyle(color: Colors.black),
          style: GoogleFonts.poppins(),
        ),
      ),
    );
  }
}
