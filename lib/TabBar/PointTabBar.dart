import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';

class PointTab extends StatefulWidget {
  @override
  _PointTabState createState() => _PointTabState();
}

class _PointTabState extends State<PointTab>  with SingleTickerProviderStateMixin {
  final tabList = ['Tab 1', 'Tab 2'];
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tabList.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Point Tab Bar'),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicator: PointTabIndicator(
            position: PointTabIndicatorPosition.bottom,
            color: Colors.white,
            insets: EdgeInsets.only(bottom: 6),
          ),
          tabs: tabList.map((item) {
            return Tab(
              text: item,
            );
          }).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabList.map((item) {
          return Center(child: Text(item));
        }).toList(),
      ),
    );
  }
}