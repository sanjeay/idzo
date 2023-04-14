import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class navdrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Drawer(
      child: ListView(
        children: [
           ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/id/1181806522/photo/i-hope-you-glow-all-day.jpg?b=1&s=170667a&w=0&k=20&c=_7Mo9vSPYLac1AL_YSa8HbpdnnxYDNSS2jStb2bveGg="),
            ),
            title: Text(
              "Sanjay das",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            subtitle: Text(
              "featured",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
            trailing: Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),

           ListTile(
            leading: Icon(Icons.account_box, color: Colors.black),
            title: Text(
              "account",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
          ),
           ListTile(
            leading: Icon(Icons.shopping_cart, color: Colors.black),
            title: Text(
              "wishlist",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
          ),
           ListTile(
            leading: Icon(Icons.bookmark_border, color: Colors.black),
            title: Text(
              "order",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
          ),
           ListTile(
            leading: Icon(Icons.local_offer, color: Colors.black),
            title: Text(
              "offers",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
          ),
           ListTile(
            leading: Icon(Icons.payment, color: Colors.black),
            title: Text(
              "payments",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
          ),
           ListTile(
            leading: Icon(Icons.help, color: Colors.black),
            title: Text(
              "help",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
          ),
           ListTile(
            leading: Icon(Icons.people,
                color: Colors.black),
            title: Text(
              "connect with us",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
          ),
           ListTile(
            leading: Icon(Icons.link, color: Colors.black),
            title: Text(
              "link",
              style: GoogleFonts.poppins(color: Colors.black),
            ),
          ),

        ],
      ),
    );
  }

}