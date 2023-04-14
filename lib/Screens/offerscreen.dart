import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idzo/Widgets/Drawer.dart';

import '../Widgets/Listview.dart';

class OfferScreen extends StatelessWidget {
  const OfferScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "offers",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Listscreen(),
      drawer: navdrawer(),
    );
  }
}
