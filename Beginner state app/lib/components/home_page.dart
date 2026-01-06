import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Image
          Container(
            width: double.infinity,
            height: 400.0,
            child: Opacity(
              opacity: 1,
              child: Image.asset("assets/home.jpg", fit: BoxFit.cover),
            ),
          ),
          // Icon arrow back
          Positioned(top: 32.0, left: 8.0, child: Icon(Icons.arrow_back)),
          // Button
          Positioned(
            bottom: 150.0,
            left: 8.0,
            child: Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: const Color(0xFFD4D4D4),
                borderRadius: BorderRadius.circular(4.0),
                border: Border.all(width: 1.0, color: Colors.grey),
              ),
              child: Text("Villa"),
            ),
          ),
          // Text detali
          Positioned(
            bottom: 80.0,
            left: 8.0,
            right: 8.0,
            child: Container(
              padding: EdgeInsets.all(0.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 20.0,
                  shadows: [
                    BoxShadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 8.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Address
          Positioned(
            bottom: 55.0,
            left: 8.0,
            right: 8.0,
            child: Container(
              padding: EdgeInsets.all(0.0),
              child: Text(
                "Banaadir, Mogadishu, Somalia",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  shadows: [
                    BoxShadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 8.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
