import 'package:flutter/material.dart';

class AppbarCode extends StatefulWidget {
  final VoidCallback isDark;
  const AppbarCode({super.key, required this.isDark});

  @override
  State<AppbarCode> createState() => _AppbarCodeState();
}

class _AppbarCodeState extends State<AppbarCode> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return AppBar(
      backgroundColor: color.primary,
      foregroundColor: color.onPrimary,
      title: Text("My Social App"),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: Tooltip(
            message: "Light or dark mode theme",
            child: IconButton(
              onPressed: widget.isDark,
              icon: Icon(Icons.brightness_6),
            ),
          ),
        ),
      ],
    );
  }
}
