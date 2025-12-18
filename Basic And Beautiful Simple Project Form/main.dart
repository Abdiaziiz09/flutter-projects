// Created by: Abdiaziiz Abdirahman Hassan

import 'package:flutter/material.dart';

void main() => runApp(const FormDesign());

class FormDesign extends StatelessWidget {
  const FormDesign({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FormPage(),
    );
  }
}

class FormPage extends StatefulWidget {
  const FormPage({super.key});
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      "Form",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 50.0),
                    TextFormFieldWidgetName(),
                    SizedBox(height: 20.0),
                    TextFormFieldWidgetEmail(),
                    SizedBox(height: 20.0),
                    TextFormFieldWidgetPassword(),
                    SizedBox(height: 20.0),
                    ElevatedButtonSubmit(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Class Name
class TextFormFieldWidgetName extends StatelessWidget {
  const TextFormFieldWidgetName({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Name e.g - Abdiaziiz Abdirahman",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            width: 1.5,
            color: Colors.grey.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}

// Class Email
class TextFormFieldWidgetEmail extends StatelessWidget {
  const TextFormFieldWidgetEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Email e.g - example@gmail.com",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            width: 1.5,
            color: Colors.grey.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}

// Class Password
class TextFormFieldWidgetPassword extends StatelessWidget {
  const TextFormFieldWidgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Password e.g - secret**738Biw@dNs",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            width: 1.5,
            color: Colors.grey.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}

// Class Submit Button
class ElevatedButtonSubmit extends StatelessWidget {
  const ElevatedButtonSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: ElevatedButton.icon(
        onPressed: () {},
        label: Text(
          "Submit",
          style: TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
      ),
    );
  }
}
