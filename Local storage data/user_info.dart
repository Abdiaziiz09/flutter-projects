import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});
  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  // Abuur local storage
  Future<void> _createDataOnLocalStorage() async {
    // Soo qabso SharedPreferences
    final prefs = await SharedPreferences.getInstance();

    // Ku abuur:
    // 1.Name
    await prefs.setString("name", "Abdiaziz Abdirahman Hassan");

    // 2.Email
    await prefs.setString("email", "test@gmail.com");

    // 3.Password
    await prefs.setString("password", "passwordtest123");

    // 4.Phone number
    await prefs.setString("tell", "61xxxxxxx");

    // 5.Address
    await prefs.setString("address", "Howlwadaag");
  }

  String? name;
  String? email;
  String? password;
  String? tell;
  String? address;

  // Soo akhri local storage
  Future<void> _readDataOnLocalStorage() async {
    // Abuur/Soo-qabso sharedPrefrences
    final prefs = await SharedPreferences.getInstance();

    // Soo qabso name
    final String? _name = await prefs.getString("name");

    // Soo qabso email
    final String? _email = await prefs.getString("email");

    // Soo qabso password
    final String? _password = await prefs.getString("password");

    // Soo qabso tell/phone-number
    final String? _tell = await prefs.getString("tell");

    // Soo qabso address
    final String? _address = await prefs.getString("address");

    setState(() {
      name = _name;
      email = _email;
      password = _password;
      tell = _tell;
      address = _address;
    });
  }

  @override
  void initState() {
    super.initState();
    _createDataOnLocalStorage();
    _readDataOnLocalStorage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            // Name
            Text("Name: ${name ?? "Majiraan waxa magac ah?"}"),

            // Email
            Text("Name: ${email ?? "Majiraan waxa email ah?"}"),

            // Password
            Text("Name: ${password ?? "Majiraan waxa password ah?"}"),

            // Tell/Phone-number
            Text("Name: ${tell ?? "Majiraan waxa number ah?"}"),

            // Address
            Text("Name: ${address ?? "Majiraan waxa address ah?"}"),
          ],
        ),
      ),
    );
  }
}
