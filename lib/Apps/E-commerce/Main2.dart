import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Apps/E-commerce/constants.dart';
import 'package:knowledgeable_content/Apps/E-commerce/screens/home/home_screen.dart';



class Main12 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
