import 'package:flutter/material.dart';
import 'package:splash_tap/splash_tap.dart';

class SplashTap extends StatefulWidget {
  @override
  _SplashTapState createState() => _SplashTapState();
}

class _SplashTapState extends State<SplashTap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Splash(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            'Splash!',
            style: TextStyle(fontSize: 32),
          ),
        ),
      ),
    );
  }
}
