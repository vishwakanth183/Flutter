import 'package:flutter/material.dart';
import 'package:lootify/src/components/auth/signup/signup.dart';
// import 'package:lootify/src/components/auth/signup/signup.dart';
// import 'package:lootify/src/components/home/home.dart';
// import 'package:lootify/src/components/splash/splash.dart';

var appColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(148, 23, 47, 108));
const String appFont = "poppins";

void main() {
  // runApp( MaterialApp(home: Scaffold(body: Splash())));
  runApp(MaterialApp(
      theme: ThemeData().copyWith(
        colorScheme: appColorScheme,
        appBarTheme: const AppBarTheme().copyWith(backgroundColor: appColorScheme.onPrimaryContainer, foregroundColor: appColorScheme.onPrimary),
        cardTheme: const CardTheme().copyWith(color: appColorScheme.secondaryContainer, margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 31, 18, 132)),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                textStyle: MaterialStatePropertyAll(TextStyle(fontFamily: appFont)))),
        textTheme: ThemeData().textTheme.copyWith(
            titleLarge: const TextStyle(fontFamily: appFont),
            bodyMedium: TextStyle(
              fontSize: 14,
              fontFamily: appFont,
              color: appColorScheme.secondary,
            )),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(fontSize: 18, fontFamily: appFont, fontWeight: FontWeight.w100, color: appColorScheme.primary),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(body: Signup())));
}
