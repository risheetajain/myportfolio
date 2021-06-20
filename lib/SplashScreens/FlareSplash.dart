import 'package:flutter/material.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:knowledgeable_content/SplashScreens/SplashScreens.dart';

class FlareSplash extends StatefulWidget {
  @override
  _FlareSplashState createState() => _FlareSplashState();
}

class _FlareSplashState extends State<FlareSplash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen.navigate(
        name: 'intro.flr',
        next: (context) =>SplashScreens(),
        until: () => Future.delayed(Duration(seconds: 5)),
        startAnimation: '1',
      ),
    );;
  }
}
