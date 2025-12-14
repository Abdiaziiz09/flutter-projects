import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text(
            "App name",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/lion.png"),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                "The Text widget in Flutter is a foundational, stateless widget used to display a string of text on the screen with a single, consistent style. ",
              ),
            ),
            SizedBox(height: 15.0),
            Divider(
              color: Color(0xffB7B7B7),
              thickness: 0.3,
              indent: 8.0,
              endIndent: 8.0,
            ),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                "The Flutter Container is a versatile, foundational widget that acts as a multi-purpose box, combining common painting, positioning, and sizing features into a single element. It is a convenience widget used to compose, decorate, and position a single child widget within your app's user interface.",
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              padding: EdgeInsets.all(8.0),
              margin: EdgeInsets.only(left: 8.0),
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: Icon(Icons.arrow_forward_ios, size: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
