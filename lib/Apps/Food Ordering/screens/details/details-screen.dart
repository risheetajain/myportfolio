import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Apps/Food Ordering/constants.dart';
import 'package:knowledgeable_content/Apps/Food Ordering/screens/details/components/app_bar.dart';
import 'package:knowledgeable_content/Apps/Food Ordering/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}
