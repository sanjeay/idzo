import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class offerss extends StatelessWidget{
  late String text;
  IconData icon;
  offerss(this.text,this.icon);
  @override
  Widget build(BuildContext context) {
    // TODO: implement buil
    return ListTile(
        title: Text(text,style: GoogleFonts.poppins()),
      trailing: Icon(icon),

    );
  }

}