import 'package:flutter/material.dart';
import 'package:knowledgeable_content/SplashScreens/SplashScreens.dart';
import 'package:your_splash/your_splash.dart';

class YourSplash extends StatefulWidget {
  @override
  _YourSplashState createState() => _YourSplashState();
}

class _YourSplashState extends State<YourSplash> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen.timed(
          seconds: 3,
          route: MaterialPageRoute(builder: (_) =>SplashScreens()),
          body: Scaffold(
            body: InkWell(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage('https://bit.ly/3hD5Tj8'),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}


