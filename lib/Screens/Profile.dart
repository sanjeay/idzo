import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idzo/Screens/picker.dart';

import '../Widgets/Drawer.dart';
import '../Widgets/Listview.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "notifications",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Listscreen(),
      drawer: navdrawer(),
    );
  }
}
