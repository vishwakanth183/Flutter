import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:google_fonts/google_fonts.dart';

class CategoryHeader extends StatelessWidget {
  final String titleName;
  const CategoryHeader({super.key, required this.titleName});

  @override
  Widget build(context) {
    // return Center(
    //   child: Text(
    //     titleName,
    //     style: GoogleFonts.righteous(),
    //   ),
    // );

    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 16, 36, 91),
        Color.fromARGB(255, 20, 70, 163)
      ])),
      height: 50,
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            titleName,
            style: const TextStyle(
                fontFamily: "Righteous", fontSize: 20, color: Colors.white),
          ),
          const Opacity(
            opacity: 0.8,
            child: Row(
              children: [
                Text(
                  "Explore",
                  style: TextStyle(
                      fontFamily: "Poppins", fontSize: 12, color: Colors.white),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 16,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
