// Created by: Abdiaziz Abdirahman Hassan
import 'package:flutter/material.dart';
import 'package:test_ap/page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool lightDarkOrSystemMode = false;
  @override
  Widget build(BuildContext context) {
    ThemeData currentTheme;
    if (lightDarkOrSystemMode == true) {
      currentTheme = ThemeData.light();
    } else if (lightDarkOrSystemMode == false) {
      currentTheme = ThemeData.dark();
    } else {
      currentTheme = ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      );
    }

    // Theme is light or dark
    void isDark() {
      setState(() {
        lightDarkOrSystemMode = !lightDarkOrSystemMode;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: currentTheme,

      home: HomePage(isDark: isDark),
    );
  }
}
