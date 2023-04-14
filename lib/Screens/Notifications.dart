import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idzo/Widgets/Drawer.dart';


class Notifcations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Notifcations',style: GoogleFonts.poppins(),),
      ),
      drawer: navdrawer(),
      body: Container(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height*.3,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://cdni.iconscout.com/illustration/premium/thumb/no-notification-7359561-6024629.png"))),
              ),
            ),
            Text("You have no notifcations",style: GoogleFonts.poppins(fontSize: 20),)
          ],
        )
      ),
    );
  }
}