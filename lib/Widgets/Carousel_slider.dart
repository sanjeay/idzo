import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class carousel extends StatefulWidget {
  const carousel({Key? key}) : super(key: key);

  @override
  State<carousel> createState() => _carouselState();
}

class _carouselState extends State<carousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          ///first image of slider
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://assets.adidas.com/images/w_600,f_auto,q_auto/e9dbb0f4bfcd493e8618ae080164d385_9366/RUNNING_ADIGLIDE_SHOES_Turquoise_EY3064_01_standard.jpg"),
                    fit: BoxFit.cover)),
          ),

          ///second image of slider
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/29abad8d7ae64654b001adb90136819e_9366/RUNMAGICA_SHOES_Blue_EY2972_01_standard.jpg"),
                    fit: BoxFit.cover)),
          )
        ],
        options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ));
  }
}
