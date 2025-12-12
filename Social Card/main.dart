import 'package:flutter/material.dart';

void main() {
  runApp(const MySocialCard());
}

class MySocialCard extends StatelessWidget {
  const MySocialCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Social Card"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.dark_mode,
                size: 26.0,
                color: const Color(0xFF686868),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 5.0),
              child: SizedBox(
                width: 70,
                height: 30,
                child: Stack(
                  children: [
                    Container(
                      width: 70.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 2, color: Colors.grey),
                      ),
                    ),
                    Positioned(
                      top: 5.0,
                      left: 5.0,
                      bottom: 5.0,
                      child: Container(
                        width: 18.0,
                        height: 18.0,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(left: 8.0, right: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 1.0,
                  spreadRadius: 1.0,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage("images/profile.png"),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Abdiaziz Abdirahman",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                "@abdiaziz",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 12.0, bottom: 12.0),
                  child: Text(
                    "Code ma aha kaliya xariijimo la qoro, waa fikir lagu xalliyo dhibaato, laguna abuuro mustaqbal.",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12.0,
                                bottom: 8.0,
                                right: 48.0,
                              ),
                              child: Icon(
                                Icons.facebook,
                                color: Color(0xFF002AFF),
                                size: 26,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12.0,
                                bottom: 8.0,
                                right: 48.0,
                              ),
                              child: Icon(Icons.camera_alt, size: 26),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12.0,
                                bottom: 8.0,
                                right: 45.0,
                              ),
                              child: Icon(Icons.music_note, size: 26),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12.0,
                                right: 22.0,
                                bottom: 12.0,
                              ),
                              child: Column(
                                children: [
                                  Text("42"),
                                  Text(
                                    "Posts",
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12.0,
                                right: 22.0,
                                bottom: 8.0,
                              ),
                              child: Column(
                                children: [
                                  Text("1.1k"),
                                  Text(
                                    "Followers",
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12.0,
                                right: 22.0,
                                bottom: 12.0,
                              ),
                              child: Column(
                                children: [
                                  Text("180"),
                                  Text(
                                    "Following",
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
