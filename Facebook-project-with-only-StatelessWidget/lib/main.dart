// Created by: Abdiaziz Abdirahman Hassan
import 'package:facebook/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookApp());
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
