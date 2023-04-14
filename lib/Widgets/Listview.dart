import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'offers.dart';

class Listscreen extends StatelessWidget {
  const Listscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            // child: offerss("Name",Icons.person),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            // child: offerss("detailes",Icons.details),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            // child: offerss("phonenumber", Icons.phone),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            // child: offerss("offers", Icons.percent),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            // child: offerss("wishlist",Icons.card_travel),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            // child: offerss("cart",Icons.shopping_cart),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            // child: offerss("order",Icons.bookmark_border),
          )
        ],
      ),
    );
  }
}
