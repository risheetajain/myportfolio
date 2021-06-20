import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1/common_widget/AppBarWidget.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1/common_widget/BottomNavBarWidget.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1/common_widget/DrawerWidget.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1//screens/HomeScreen.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1//screens/ProductDetailScreen.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1//screens/ShoppingCartScreen.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1//screens/WishListScreen.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1//components/AppSignIn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class EcommerceApps1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
          fontFamily: 'Roboto',
          primaryColor: Colors.white,
          primaryColorDark: Colors.white,
          backgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
    );
  }
}

int currentIndex = 0;

void navigateToScreens(int index) {
  currentIndex = index;
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageNewState createState() => _MyHomePageNewState();
}

class _MyHomePageNewState extends State<MyHomePage> {
  final List<Widget> viewContainer = [
    HomeScreen(),
    WishListScreen(),
    ShoppingCartScreen(),
    HomeScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appBarWidget(context),
        drawer: DrawerWidget(),
        body: IndexedStack(
          index: currentIndex,
          children: viewContainer,
        ),
        bottomNavigationBar: BottomNavBarWidget(),
      ),
    );
  }
}

//https://api.evaly.com.bd/core/public/products/?page=1&limit=12&category=facial-cleansing-brushes-84365a5ee

//https://api.evaly.com.bd/core/public/products/?page=1&limit=12&category=bags-luggage-966bc8aac
