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
        appBar: AppBar(title: Text("Profile"), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 6,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("images/profile.jpeg"),
              ),
              Text(
                "Abdiaziiz Abdirahman",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              Text(
                "+252 610370605",
                style: TextStyle(color: Color(0xFF858585), fontSize: 14.0),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0.0,
                      blurRadius: 2.0,
                      offset: Offset(0.5, 0.5),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  spacing: 15.0,
                  children: [
                    Icon(Icons.help),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 2,
                        children: [
                          Text(
                            "About Me",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Code ma aha kaliya xariijimo la qoro, waa fikir lagu xalliyo dhibaato, laguna abuuro mustaqbal.",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
