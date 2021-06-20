import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class TabIndicator extends StatefulWidget {
  @override
  _TabIndicatorState createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Material Indicator: position bottom"),
                ),
                Material(
                  child: TabBar(
                    indicatorColor: Colors.green,
                    tabs: [
                      Tab(
                        text: "Home",
                      ),
                      Tab(
                        text: "Work",
                      ),
                      Tab(
                        text: "Play",
                      ),
                    ],
                    labelColor: Colors.black,
                    indicator: MaterialIndicator(
                      height: 5,
                      topLeftRadius: 8,
                      topRightRadius: 8,
                      horizontalPadding: 50,
                      tabPosition: TabPosition.bottom,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Dot Indicator"),
                ),
                Material(
                  child: TabBar(
                    indicatorColor: Colors.green,
                    tabs: [
                      Tab(
                        text: "Home",
                      ),
                      Tab(
                        text: "Work",
                      ),
                      Tab(
                        text: "Play",
                      ),
                    ],
                    labelColor: Colors.black,
                    indicator: DotIndicator(
                      color: Colors.black,
                      distanceFromCenter: 16,
                      radius: 3,
                      paintingStyle: PaintingStyle.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Material Indicator: position top"),
                ),
                Material(
                  child: TabBar(
                    indicatorColor: Colors.green,
                    tabs: [
                      Tab(
                        text: "Home",
                      ),
                      Tab(
                        text: "Work",
                      ),
                      Tab(
                        text: "Play",
                      ),
                    ],
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: MaterialIndicator(
                      height: 5,
                      topLeftRadius: 0,
                      topRightRadius: 0,
                      bottomLeftRadius: 5,
                      bottomRightRadius: 5,
                      tabPosition: TabPosition.top,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("RectangularIndicator Indicator: fill"),
                ),
                Material(
                  child: TabBar(
                    indicatorColor: Colors.green,
                    tabs: [
                      Tab(
                        text: "Home",
                      ),
                      Tab(
                        text: "Work",
                      ),
                      Tab(
                        text: "Play",
                      ),
                    ],
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black,
                    indicator: RectangularIndicator(
                      bottomLeftRadius: 100,
                      bottomRightRadius: 100,
                      topLeftRadius: 100,
                      topRightRadius: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("RectangularIndicator Indicator: stroke"),
                ),
                TabBar(
                  indicatorColor: Colors.green,
                  tabs: [
                    Tab(
                      text: "Home",
                    ),
                    Tab(
                      text: "Work",
                    ),
                    Tab(
                      text: "Play",
                    ),
                  ],
                  labelColor: Colors.black,
                  indicator: RectangularIndicator(
                    bottomLeftRadius: 100,
                    bottomRightRadius: 100,
                    topLeftRadius: 100,
                    topRightRadius: 100,
                    paintingStyle: PaintingStyle.stroke,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
