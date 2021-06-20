import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Apps/Food Ordering/components/bottom_nav_bar.dart';
import 'package:knowledgeable_content/Apps/Food Ordering/screens/home/components/app_bar.dart';
import 'package:knowledgeable_content/Apps/Food Ordering/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
