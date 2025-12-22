// Created by: Abdiaziz Abdirahman Hassan
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();
  // Controll ka waxa uu ka cawinaya in aad hesho waxa uu user sameynayo iyo in aad tir tiro karto iwm.
  final controllerUser = TextEditingController();
  // User xogta meesha lagu keeydin doona ama List lagu keeydin doono.
  List userInformation = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff652BEF),
          foregroundColor: Colors.white,
          title: Text("Howshaada App"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: userInformation.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: <Widget>[
                        Expanded(
                          child: BoxContainerUserContemt(
                            userInformation: userInformation[index],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              userInformation.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.delete, size: 30),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: controllerUser,
                    onFieldSubmitted: (value) {
                      setState(() {
                        if (value.isNotEmpty) {
                          userInformation.add(value);
                          controllerUser.clear();
                        }
                      });
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffDACAFF),
                      hintText: "Geli howlahaaga maanta...",
                      hintStyle: TextStyle(color: Color(0xFF616161)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 1.5, color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: Color(0xFF5720D7),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: const Color(0xFFFD1B1B),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BoxContainerUserContemt extends StatelessWidget {
  final userInformation;
  BoxContainerUserContemt({super.key, required this.userInformation});

  @override
  Widget build(BuildContext context) {
    // waxaa column u galiyey si aan u siiyo container-ka ka hooseeya space fiican oo mid ka ka hooseeya ah.
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Color(0xFFF3F3F3),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Text("$userInformation"),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
