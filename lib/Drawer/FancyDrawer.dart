import 'package:flutter/material.dart';
import 'package:fancy_drawer/fancy_drawer.dart';

class FancyDrawer extends StatefulWidget {
  @override
  _FancyDrawerState createState() => _FancyDrawerState();
}

class _FancyDrawerState extends State<FancyDrawer> with SingleTickerProviderStateMixin {
  FancyDrawerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(milliseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  FancyDrawerWrapper(
      backgroundColor: Colors.white,
      controller: _controller,
      drawerItems: <Widget>[
        Text(
          "Go to home",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "About us",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Our products",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Support us",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Log out",
          style: TextStyle(
            fontSize: 18,
            color: Colors.purple.shade700,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          elevation: 4.0,
          title: Text(
            "Some appbar",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              _controller.toggle();
            },
          ),
        ),
        body: Center(
          child: Text("Fancy Drawer Body"),
        ),
      ),
    );
  }
}
