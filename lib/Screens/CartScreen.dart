import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idzo/Widgets/Drawer.dart';

import '../Widgets/Listview.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Cart",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: Listscreen(),
      drawer: navdrawer(),
    );
  }
}
