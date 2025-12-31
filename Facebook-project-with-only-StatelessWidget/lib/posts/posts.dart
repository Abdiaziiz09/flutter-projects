import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopUser extends StatelessWidget {
  final String userName;
  final String imagePostUserPath;
  const TopUser({
    super.key,
    required this.imagePostUserPath,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // user date or time post
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image Profile
                  CircleAvatar(backgroundImage: AssetImage(imagePostUserPath)),

                  SizedBox(width: 4.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Username
                      Text(
                        userName,
                        style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Row(
                        children: <Widget>[
                          Text(
                            "18h",
                            style: GoogleFonts.openSans(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Text(
                            "•",
                            style: GoogleFonts.openSans(
                              color: Colors.grey[500],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 5.0),
                          Icon(
                            Icons.language,
                            size: 17.0,
                            color: Colors.grey[500],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // more_vert icon and cancel icon
              Row(
                children: <Widget>[
                  Icon(Icons.more_horiz, color: Color(0xFF525252)),
                  SizedBox(width: 6.0),
                  Icon(Icons.cancel, color: Color(0xFF525252)),
                ],
              ),

              // Post image

              // Like, Comment, and Share
            ],
          ),

          SizedBox(height: 14.0),

          // Text post
          TextPost(),
        ],
      ),
    );
  }
}

// ================
// Text post
// ================

class TextPost extends StatelessWidget {
  const TextPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Maanta waxa aan iska qaaday sawir qurux badan.",
      style: GoogleFonts.openSans(
        color: const Color(0xFF3F3F3F),
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

// ================
// Post Image
// ================
class PostImage extends StatelessWidget {
  final String PostImagePath;
  const PostImage({super.key, required this.PostImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [BoxShadow(blurRadius: 2.0, offset: Offset(-0.1, -0.1))],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(PostImagePath, fit: BoxFit.cover),
      ),
    );
  }
}
