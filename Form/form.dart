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
        appBar: AppBar(
          title: Text("Form"),
          centerTitle: true,
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [TextForm(), Name(), Number(), Email(), Button()],
          ),
        ),
      ),
    );
  }
}

/* 
  Text form macnaha waa meesha userka u sheegeysa wax larabo
  inuu form-kan uu ku sameeyo
*/
class TextForm extends StatelessWidget {
  const TextForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          "Fill out the form",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// User input name
class Name extends StatelessWidget {
  const Name({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: "Name",
          hintText: "Enter your name",
        ),
      ),
    );
  }
}

// User input number
class Number extends StatelessWidget {
  const Number({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: "Number",
          hintText: "Enter your number",
        ),
      ),
    );
  }
}

// User input email
class Email extends StatelessWidget {
  const Email({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email",
        ),
      ),
    );
  }
}

// User button submit
class Button extends StatelessWidget {
  const Button({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: const Color(0xFF002AFF),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            "Submit",
            style: TextStyle(fontSize: 15.5, color: const Color(0xFFFFFFFF)),
          ),
        ),
      ),
    );
  }
}
