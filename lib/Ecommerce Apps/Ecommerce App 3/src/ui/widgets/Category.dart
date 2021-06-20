import 'package:flutter/material.dart';

class Firstlist extends StatefulWidget {
  @override
  _FirstlistState createState() => _FirstlistState();
}

class _FirstlistState extends State<Firstlist> {
  var name = [
    "assets/Ecommerce App 1/applinces.png",
    "assets/Ecommerce App 1/beauty.png",
    "assets/Ecommerce App 1/electronic.png",
    "assets/Ecommerce App 1/fashion.png",
    "assets/Ecommerce App 1/grocery.png",
    "assets/Ecommerce App 1/mobiles.png",
    "assets/Ecommerce App 1/sports_and_more.png",
    "assets/Ecommerce App 1/toys_and_babby.png",
    "assets/Ecommerce App 1/home.png"
  ];

  buildItem(BuildContext context, int index) {
    return Container(
      width: MediaQuery.of(context).size.width / 6,
      height: MediaQuery.of(context).size.height / 11,
      child: Image.asset(
        name[index],
        height: MediaQuery.of(context).size.height / 11,
        width: MediaQuery.of(context).size.width / 6,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 11,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return buildItem(context, index);
        },
      ),
    );
  }
}
