import 'package:flutter/material.dart';

void main() {
  runApp(const Body_list_view_users());
}

class Body_list_view_users extends StatelessWidget {
  const Body_list_view_users({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_1.png"),
          ),
          title: Text("John Graelish"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("12"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_2.png"),
          ),
          title: Text("Helen"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("38"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_3.png"),
          ),
          title: Text("Jenny Long"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("4"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_4.png"),
          ),
          title: Text("Tabitha"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("16"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_5.png"),
          ),
          title: Text("Eugene"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("87"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_6.png"),
          ),
          title: Text("Tony Parker"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("53"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_7.png"),
          ),
          title: Text("Shailey Smith"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("69"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_8.png"),
          ),
          title: Text("Mandy"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("91"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_9.png"),
          ),
          title: Text("Alison"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("19"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_10.png"),
          ),
          title: Text("Sommer"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("22"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(
            top: 0.0,
            bottom: 0.0,
            left: 8.0,
            right: 8.0,
          ),
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("images/List_users_profile_11.png"),
          ),
          title: Text("Ian Halder"),
          subtitle: Row(
            children: [
              Text("Delivered"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("just now"),
              SizedBox(width: 10.0),
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                child: Text(".", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              SizedBox(width: 10.0),
              Text("31"),
              SizedBox(width: 10.0),
              Text("🔥"),
            ],
          ),
          trailing: Icon(Icons.camera_alt_outlined, color: Color(0xff989898)),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Divider(height: 0.1, color: Color(0xFFD0D0D0)),
        ),
      ],
    );
  }
}
