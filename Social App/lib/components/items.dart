import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  const Items({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: 10.0,
      runSpacing: 10.0,
      children: <Widget>[
        // Flutter chip
        Chip(label: Text("Flutter")),

        // Dart chip
        Chip(label: Text("Dart")),

        // Firebase chip
        Chip(label: Text("Firebase")),

        // Web dev chip
        Chip(label: Text("Web dev")),

        // Mobile dev chip
        Chip(label: Text("Mobile dev")),
      ],
    );
  }
}
