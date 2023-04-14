import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:idzo/Widgets/Drawer.dart';
import 'package:image_picker/image_picker.dart';

class imagee extends StatefulWidget {
  const imagee({Key? key}) : super(key: key);

  @override
  State<imagee> createState() => _imageeState();
}

class _imageeState extends State<imagee> {
  File? _image;

  Future getimage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (_image == null) return;
    final imagetemporary = File(image!.path);

    setState(() {
      this._image = imagetemporary;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Set your image',
            style: GoogleFonts.poppins(),
          ),
        ),
        drawer: navdrawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              _image != null
                  ? Image.file(_image!,
                      width: 400, height: 400, fit: BoxFit.cover)
                  : Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXNczJL-XCL-JuqQDvJRVDkoTJULOPAXZo2aZ43SvAh6rXLaytz7Hc2izWMF7DV5lejeDknE6PUVk&usqp=CAU&ec=48665698",
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    )
            ]),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    getimage(ImageSource.gallery);
                  },
                  child: Text(
                    "choose from gallery",
                    style: GoogleFonts.poppins(),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {
                    getimage(ImageSource.camera);
                  },
                  child: Text(
                    "Open camera",
                    style: GoogleFonts.poppins(),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
