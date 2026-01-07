import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Container(
      padding: EdgeInsets.all(20.0),
      height: 120.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color.inversePrimary,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

        children: <Widget>[
          // Image
          CircleAvatar(
            radius: 35.0,
            backgroundImage: AssetImage("assets/profile.jpg"),
          ),

          SizedBox(width: 15.0),

          // Name
          Text(
            "Abdiaziz Abdirahman Hassan",
            style: GoogleFonts.poppins(fontSize: 16.5),
          ),
        ],
      ),
    );
  }
}
