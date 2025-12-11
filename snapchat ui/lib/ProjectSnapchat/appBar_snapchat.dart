import 'package:flutter/material.dart';

void main() {
  runApp(const appBar_snapchat());
}

class appBar_snapchat extends StatelessWidget {
  const appBar_snapchat({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100.0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
    );
  }
}
