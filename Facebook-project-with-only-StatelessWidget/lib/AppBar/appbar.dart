import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarCode extends StatelessWidget {
  const AppBarCode({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      // Logo-da facebook ballaca inta aay ku fadhiso
      leadingWidth: 152.0,
      // Logo-da facebook text ahaan
      leading: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          "Facebook",
          style: GoogleFonts.openSans(
            color: Color(0xFF0026FF),
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
      // Qaaybta midib ee icons-ka yaalo
      actions: [
        // Icons sida add/+, search, messenger/message
        // add/+ icon
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.add, size: 26, fontWeight: FontWeight.bold),
        ),

        // search icon
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.search, size: 26, fontWeight: FontWeight.bold),
        ),

        // messenger/message icon
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.messenger_outline,
            size: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
