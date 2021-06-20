import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 2/src/config/route.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 2/src/pages/mainPage.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 2/src/pages/product_detail.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 2/src/widgets/customRoute.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/themes/theme.dart';



class EcommerceApps2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce ',
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.muliTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name.contains('detail')) {
          return CustomRoute<bool>(
              builder: (BuildContext context) => ProductDetailPage());
        } else {
          return CustomRoute<bool>(
              builder: (BuildContext context) => MainPage());
        }
      },
      initialRoute: "MainPage",
    );
  }
}
