import 'package:flutter/material.dart';
import 'package:knowledgeable_content/SplashScreens/AnimatedSplash.dart';
import 'package:knowledgeable_content/SplashScreens/CustomSplash.dart';
import 'package:knowledgeable_content/SplashScreens/FlareSplash.dart';
import 'package:knowledgeable_content/SplashScreens/SplashScreenView.dart';
import 'package:knowledgeable_content/SplashScreens/SplashTap.dart';
import 'package:knowledgeable_content/SplashScreens/YourSplash.dart';

class SplashScreens extends StatefulWidget {
  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        //itemCount: Pages.length,
        children: [
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Animated Splash'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AnimatedSplash()));
                    },
                  ),
                ),
              )),
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text('CustomSplash'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>CustomSplash()));
          //           },
          //         ),
          //       ),
          //     )),
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text('FlareSplash'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>FlareSplash()));
          //           },
          //         ),
          //       ),
          //     )),
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text('SplashScreenView1'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>SplashScreenView1()));
          //           },
          //         ),
          //       ),
          //     )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Splash Tap'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SplashTap()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Your Splash'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => YourSplash()));
                    },
                  ),
                ),
              )),
        ]);
  }
}
