import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Apps/Meditation/screens/homepage.dart';



class Main2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meditaion app',
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:MyHomePage()
    );
  }
}

