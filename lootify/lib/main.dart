import 'package:flutter/material.dart';
import 'package:lootify/src/components/home/home.dart';
// import 'package:lootify/src/components/splash/splash.dart';

void main() {
  // runApp( MaterialApp(home: Scaffold(body: Splash())));
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false, home: Scaffold(body: HomePage())));
}
