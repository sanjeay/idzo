import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:idzo/Widgets/Drawer.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class MyPicker extends StatefulWidget {
  const MyPicker({Key? key}) : super(key: key);

  @override
  _MyPickrState createState() => _MyPickrState();
}

class _MyPickrState extends State<MyPicker> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("account detailes",style: GoogleFonts.poppins(),),
        ),
        drawer: navdrawer(),
        body: imageFile == null
            ? Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.height*0.3,
                    child: Image.network(
                        'https://www.lifewire.com/thmb/P856-0hi4lmA2xinYWyaEpRIckw=/1920x1326/filters:no_u'
                            'pscale():max_bytes(150000):strip_icc()/cloud-upload-a30f385a928e44e199a62210d578375a.jpg')),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black
                        ),
                        onPressed: () {
                          imageFromGallery();
                        },
                        child: Text("GALLERY",style: GoogleFonts.poppins(),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black
                        ),
                        onPressed: () {
                          imageFromCamera();
                        },
                        child: Text("CAMERA",style: GoogleFonts.poppins(),),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
            : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Your Uploaded Image",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*.3,
                  width: MediaQuery.of(context).size.width*.5,
                  child: Image.file(
                    imageFile!,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )));
  }

  imageFromGallery() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.gallery, maxHeight: MediaQuery.of(context).size.height*.2, maxWidth:  MediaQuery.of(context).size.width*.2);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  imageFromCamera() async {
    PickedFile? pickedFile = await ImagePicker()
        .getImage(source: ImageSource.camera, maxHeight: MediaQuery.of(context).size.height*.2, maxWidth: MediaQuery.of(context).size.width*.2);
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}