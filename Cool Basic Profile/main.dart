// Created by: Abdiaziiz Abdirahman Hassan

import 'package:flutter/material.dart';

void main() {
  runApp(const CoolProfile());
}

class CoolProfile extends StatelessWidget {
  const CoolProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Cool Profile"), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[BackgroundContainerDesign()],
          ),
        ),
      ),
    );
  }
}

// ===========================
// Background Container Design
// ===========================
class BackgroundContainerDesign extends StatelessWidget {
  const BackgroundContainerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(spreadRadius: 1.0, blurRadius: 0.3, offset: Offset(0.0, 1)),
        ],
      ),
      child: Column(
        children: <Widget>[UserProfile(), IconsProfileInfo(), FollowButton()],
      ),
    );
  }
}

// ===========================
// Username, Profile, and, Bio
// ===========================
class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 35.0,
          backgroundColor: Colors.deepPurple[800],
          child: Icon(Icons.person, color: Colors.white, size: 40),
        ),
        SizedBox(height: 12.0),
        Text(
          "Abdiaziiz Abdirahman",
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 7.0),
        Text("Flutter Developer", style: TextStyle(color: Color(0xFF7D7D7D))),
      ],
    );
  }
}

// ===========================
// Icon Profile Information
// ===========================
class IconsProfileInfo extends StatelessWidget {
  const IconsProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Favorites or Likes
          Column(
            children: <Widget>[
              Icon(Icons.favorite, size: 28.5),
              SizedBox(height: 6.0),
              Text("Likes"),
            ],
          ),
          // Followers
          Column(
            children: <Widget>[
              Icon(Icons.groups, size: 28.5),
              SizedBox(height: 6.0),
              Text("Followers"),
            ],
          ),
          // Share
          Column(
            children: <Widget>[
              Icon(Icons.share, size: 28.5),
              SizedBox(height: 6.0),
              Text("Share"),
            ],
          ),
        ],
      ),
    );
  }
}

// ===========================
// Follow Button
// ===========================
class FollowButton extends StatelessWidget {
  const FollowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            // Future...
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFBEBEBE),
          ),
          child: Text(
            "Follow",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
