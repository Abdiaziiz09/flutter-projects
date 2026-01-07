import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardUserInfo extends StatefulWidget {
  const CardUserInfo({super.key});

  @override
  State<CardUserInfo> createState() => _CardUserInfoState();
}

class _CardUserInfoState extends State<CardUserInfo> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      child: Column(
        children: <Widget>[
          // Email
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("abdiaziz@example.com"),
            trailing: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.black,
                    content: Text(
                      "Email clicked!",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                );
              },
              icon: Icon(Icons.send),
            ),
          ),

          Divider(thickness: 0.5),

          // Phone number
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            subtitle: Text("+252 61xxxxxx"),
          ),
        ],
      ),
    );
  }
}
