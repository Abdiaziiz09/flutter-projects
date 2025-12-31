import 'package:facebook/AppBar/appbar.dart';
import 'package:facebook/posts/post.dart';
import 'package:facebook/user%20status%20and%20post/make_post.dart';
import 'package:facebook/user%20status%20and%20post/status.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String imagePostUserPath =
      "assets/profile_images/users_profile_images/users_profile_5.jpg";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: AppBarCode(),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              // User Make Post
              MakePost(),

              SizedBox(height: 15.0),

              // User status/story and users status
              Status(),

              SizedBox(height: 17.0),

              SizedBox(height: 17.0),
              // Users post
              TopUser(
                userName: "Muno Yusuf",
                imagePostUserPath: imagePostUserPath,
              ),

              SizedBox(height: 10.0),

              // Post Image
              PostImage(PostImagePath: imagePostUserPath),

              Divider(),

              SizedBox(height: 17.0),

              // Users post
              TopUser(
                userName: "Zeynab Omar",
                imagePostUserPath:
                    "assets/profile_images/users_profile_images/users_profile_6.jpg",
              ),

              SizedBox(height: 10.0),

              // Post Image
              PostImage(
                PostImagePath:
                    "assets/profile_images/users_profile_images/users_profile_6.jpg",
              ),

              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
