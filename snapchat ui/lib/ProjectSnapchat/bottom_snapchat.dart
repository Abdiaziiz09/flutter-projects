import 'package:flutter/material.dart';

void main() {
  runApp(const bottom_snapchat());
}

class bottom_snapchat extends StatelessWidget {
  const bottom_snapchat({super.key});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Color(0xff3EB5E9),
      unselectedItemColor: Color(0xffffffff),
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Icon(Icons.location_on),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Icon(Icons.chat),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Icon(Icons.camera_alt),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Icon(Icons.group_add),
          ),
          label: "",
        ),
      ],
    );
  }
}
