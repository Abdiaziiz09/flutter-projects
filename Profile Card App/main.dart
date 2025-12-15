import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.teal,
                width: double.infinity,
                height: 200.0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Abdiaziiz Abdirahman",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 8.0),
                  child: Text(
                    "Flutter developer in progress | Love building apps | Learning everyday",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Divider(height: 10.0, thickness: 2.0),
              SizedBox(height: 15.0),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Chip(label: Text("Flutter")),
                    SizedBox(width: 10.0),
                    Chip(label: Text("Dart")),
                    SizedBox(width: 10.0),
                    Chip(label: Text("Web Dev")),
                    SizedBox(width: 10.0),
                    Chip(label: Text("UI/Ux")),
                  ],
                ),
              ),
              SizedBox(height: 12.0),
              Divider(height: 15.0, thickness: 1.0),
              GridView.count(
                crossAxisCount: 3,
                scrollDirection: Axis.vertical,
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/collection.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/collection.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/collection.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/collection.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/collection.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/collection.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 10.0),
              ListTile(
                leading: Icon(Icons.message),
                title: Text("Post title 1"),
                subtitle: Text("This is the description of post 1"),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
