import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_ap/components/text.dart';

class Homepage extends StatefulWidget {
  final VoidCallback click;
  const Homepage({super.key, required this.click});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.primaryContainer,
        foregroundColor: color.onPrimaryContainer,
        title: Text("Light and dark mode theme", style: GoogleFonts.poppins()),
        centerTitle: true,
        actions: [
          // light/dark mode theme
          Padding(
            padding: EdgeInsets.only(right: 18.0),
            child: IconButton(
              onPressed: widget.click,
              icon: Icon(Icons.brightness_6),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            // Text 1
            TextWidget(),

            SizedBox(height: 13.0),

            // Text 2
            TextWidget(),

            SizedBox(height: 13.0),

            // Text 3
            TextWidget(),

            SizedBox(height: 13.0),

            // Text 4
            TextWidget(),

            SizedBox(height: 13.0),

            // Text 5
            TextWidget(),

            SizedBox(height: 13.0),
            // Text 6
            TextWidget(),

            SizedBox(height: 13.0),
            // Text 7
            TextWidget(),

            SizedBox(height: 13.0),
          ],
        ),
      ),
    );
  }
}
