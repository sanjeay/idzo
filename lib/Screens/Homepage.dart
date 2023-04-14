import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idzo/Widgets/Carousel_slider.dart';
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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height*0.06,
              decoration:BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
              child:TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search here....",hintStyle: GoogleFonts.poppins()
                ),
              ),

            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              child: carousel(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,top: 270),
            child: Text("Shop me",style: GoogleFonts.poppins(fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: griddd(),
          )
        ],
      ),
    );
  }
}
