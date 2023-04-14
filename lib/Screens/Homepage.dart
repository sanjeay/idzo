import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idzo/Widgets/Drawer.dart';
import 'package:idzo/Widgets/Gridview.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Homepage",style: GoogleFonts.poppins(),),
      ),
      drawer: navdrawer(),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 15),
            child: Text("Shop me",style: GoogleFonts.poppins(fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: griddd(),
          )
        ],
      ),
    );
  }
}
