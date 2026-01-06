// Created by: Abdiaziz Abdirahman Hassan
import 'package:flutter/material.dart';
import 'package:test_ap/components/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool theme = true;
  @override
  Widget build(BuildContext context) {
    ThemeData _currentTheme;

    // Code statement
    if (theme == true) {
      _currentTheme = ThemeData.light();
    } else if (theme == false) {
      _currentTheme = ThemeData.dark();
    } else {
      _currentTheme = ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      );
    }

    // Function toggle theme
    void click() {
      setState(() {
        theme = !theme;
      });
    }

    return MaterialApp(
      theme: _currentTheme,
      home: Homepage(click: click),
    );
  }
}
