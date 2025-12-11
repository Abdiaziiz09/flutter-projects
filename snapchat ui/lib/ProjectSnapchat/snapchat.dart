import 'package:flutter/material.dart';
import 'package:widget/ProjectSnapchat/Body_list_view_users_snapchat.dart';
import 'package:widget/ProjectSnapchat/bottom_snapchat.dart';

void main() {
  runApp(const snapchat());
}

class snapchat extends StatelessWidget {
  const snapchat({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 100.0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile waaye meeshan
                CircleAvatar(
                  radius: 19.0,
                  backgroundColor: Color(0xffD9D9D9),
                  backgroundImage: AssetImage("images/profile.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: CircleAvatar(
                    backgroundColor: Color(0xffD9D9D9),
                    child: Icon(Icons.search, color: Color(0xff565656)),
                  ),
                ),
              ],
            ),
          ),
          title: Text(
            "Chat",
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 19.0,
                backgroundColor: Color(0xffD9D9D9),
                child: Icon(Icons.person_add, color: Color(0xff565656)),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 19.0,
                backgroundColor: Color(0xffD9D9D9),
                child: Icon(Icons.more_horiz, color: Color(0xff565656)),
              ),
            ),
          ],
        ),
        body: Body_list_view_users(),
        bottomNavigationBar: bottom_snapchat(),
      ),
    );
  }
}
