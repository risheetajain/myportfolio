import 'package:flutter/material.dart';
import 'package:splash_screen_view/ColorizeAnimatedText.dart';
import 'package:splash_screen_view/ScaleAnimatedText.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:splash_screen_view/TyperAnimatedText.dart';


class SplashScreenView1 extends StatefulWidget {
  @override
  _SplashScreenView1State createState() => _SplashScreenView1State();
}

class _SplashScreenView1State extends State<SplashScreenView1> {

  Widget example1 = SplashScreenView(
    home: SplashScreenView1(),
    duration: 3000,
    imageSize: 200,
    imageSrc: "logo.png",
    backgroundColor: Colors.white,
  );

  /// Logo with animated Colorize text
  Widget example2 = SplashScreenView(
    home: SplashScreenView1(),
    duration: 5000,
    imageSize: 100,
    imageSrc: "logo.png",
    text: "Colorize Text",
    textType: TextType.ColorizeAnimationText,
    textStyle: TextStyle(
      fontSize: 40.0,
    ),
    colors: [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ],
    backgroundColor: Colors.white,
  );

  /// Logo with Typer Animated Text example
  Widget example3 = SplashScreenView(
    home: SplashScreenView1(),
    duration: 3000,
    imageSize: 100,
    imageSrc: "logo.png",
    text: "Typer Animated Text",
    textType: TextType.TyperAnimatedText,
    textStyle: TextStyle(
      fontSize: 30.0,
    ),
    backgroundColor: Colors.white,
  );

  /// Logo with Scale Animated Text example
  Widget example4 = SplashScreenView(
    home: SplashScreenView1(),
    duration: 3000,
    imageSize: 100,
    imageSrc: "logo.png",
    text: "Scale Animated Text",
    textType: TextType.ScaleAnimatedText,
    textStyle: TextStyle(
      fontSize: 30.0,
    ),
    backgroundColor: Colors.white,
  );

  /// Logo with Normal Text example
  Widget example5 = SplashScreenView(
    home: SplashScreenView1(),
    duration: 3000,
    imageSize: 100,
    imageSrc: "logo.png",
    text: "Normal Text",
    textStyle: TextStyle(
      fontSize: 30.0,
    ),
    backgroundColor: Colors.white,
  );


  @override
  Widget build(BuildContext context) {
    return ListView(
      //itemCount: Pages.length,
        children:[
          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('example 1'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      return  MaterialApp(
                          title: 'Splash screen Demo',
                          home: example1

                      );
                    },
                  ),
                ),
              )),
          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('example 2'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      return  MaterialApp(
                          title: 'Splash screen Demo',
                          home: example2

                      );},
                  ),
                ),
              )),
          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('example 3'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      return  MaterialApp(
                          title: 'Splash screen Demo',
                          home: example3

                      );
                    },
                  ),
                ),
              )),
          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('example 4'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      return  MaterialApp(
                          title: 'Splash screen Demo',
                          home: example4

                      );
                    },
                  ),
                ),
              )),
          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('example 5'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      return  MaterialApp(
                          title: 'Splash screen Demo',
                          home: example5

                      );
                    },
                  ),
                ),
              )),

        ]
    );
  }
}
