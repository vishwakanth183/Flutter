import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomImageElement extends StatelessWidget {
  const CustomImageElement({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(context) {
    return Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
        // decoration: const BoxDecoration(boxShadow: [
        //   BoxShadow(
        //     color: Colors.black12,
        //     offset: Offset(0.5, 0.5),
        //     blurRadius: 2.1,
        //     spreadRadius: 0.3,
        //   )
        // ]),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Image.network(
                imageUrl,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Category name",
              style: GoogleFonts.poppins(),
            )
          ],
        ));
  }
}
