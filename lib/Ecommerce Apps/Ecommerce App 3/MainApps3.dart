import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 3/src/ui/homePage.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 3/src/splash/splash_screens.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 3/src/Constant/Constant.dart';
import 'package:flutter/material.dart';



class EcommerceApps3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flipkart',
      theme: ThemeData(
        primaryColor: Color(0xff2874F0),
      ),
      routes: <String,WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context)=> AnimatedSplashScreen(),
        HOME_SCREEN: (BuildContext context)=> HomePage(),
      },
      home: AnimatedSplashScreen(),
    );
  }
}
