import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MakePost extends StatelessWidget {
  const MakePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // User Make Post
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          // row-gaan waa left widgets
          children: <Widget>[
            // Meeshan waa Logo-da user-ka.
            Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                // color: Color(0xFF030FFF),
                borderRadius: BorderRadius.circular(100.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  "assets/profile_images/user_profile_image/user_profile.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // User post placeholder text What's on your mind
            SizedBox(width: 8.0),
            Text(
              "What's on your mind?",
              style: GoogleFonts.openSans(
                color: Color(0xFF000000),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        // right widget
        // User post image
        Icon(Icons.photo, color: Color(0xFF535353)),
      ],
    );
  }
}
