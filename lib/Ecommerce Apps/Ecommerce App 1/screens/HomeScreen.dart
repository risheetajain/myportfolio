import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1/components/BrandHomePage.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1/components/CategorySlider.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1/common_widget/PopularMenu.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1/common_widget/SearchWidget.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1/common_widget/TopPromoSlider.dart';
import 'package:knowledgeable_content/Ecommerce Apps/Ecommerce App 1/components/ShopHomePage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SearchWidget(),
          TopPromoSlider(),
          PopularMenu(),
          SizedBox(
            height: 10,
            child: Container(
              color: Color(0xFFf5f6f7),
            ),
          ),
          PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Categories',
                ),
                Tab(
                  text: 'Brands',
                ),
                Tab(
                  text: 'Shops',
                )
              ], // list of tabs
            ),
          ),
          SizedBox(
            height: 10,
            child: Container(
              color: Color(0xFFf5f6f7),
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  color: Colors.white24,
                  child: CategoryPage(slug: 'categories/'),
                ),
                Container(
                  color: Colors.white24,
                  child: BrandHomePage(slug: 'brands/?limit=20&page=1'),
                ),
                Container(
                  color: Colors.white24,
                  child: ShopHomePage(
                    slug: 'custom/shops/?page=1&limit=15',
                  ),
                ) // class name
              ],
            ),
          ),
        ],
      ),
    );
  }
}
