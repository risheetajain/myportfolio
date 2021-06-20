import 'package:flutter/material.dart';
import 'package:knowledgeable_content/TabBar/BubbleTab.dart';
import 'package:knowledgeable_content/TabBar/ExtendedTab.dart';
import 'package:knowledgeable_content/TabBar/PointTabBar.dart';
import 'package:knowledgeable_content/TabBar/ScrollableList.dart';
import 'package:knowledgeable_content/TabBar/ShiftingTab.dart';
import 'package:knowledgeable_content/TabBar/TabIndicator.dart';
import 'package:knowledgeable_content/TabBar/TabView.dart';
import 'package:knowledgeable_content/TabBar/ToggleTab.dart';

class TabBar1 extends StatefulWidget {
  @override
  _TabBar1State createState() => _TabBar1State();
}

class _TabBar1State extends State<TabBar1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        //itemCount: Pages.length,
        children: [
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('BubbleTab'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => BubbleTab()));
                    },
                  ),
                ),
              )),
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text('ExtendedTab'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>ExtendedTab()));
          //           },
          //         ),
          //       ),
          //     )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('PointTab'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PointTab()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Scrollable List'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScrollableList()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('ShiftingTab'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ShiftingTab1()));
                    },
                  ),
                ),
              )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Tab Indicator'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TabIndicator()));
                    },
                  ),
                ),
              )),
          // Padding( padding: EdgeInsets.all(16),
          //     child:Card(
          //       child: ListTile(
          //         title: Text('TabView'),
          //         trailing: IconButton(
          //           icon: Icon(Icons.arrow_forward_ios),
          //           onPressed: (){
          //             Navigator.push(context,MaterialPageRoute(builder: (context)=>TabView()));
          //           },
          //         ),
          //       ),
          //     )),
          Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                child: ListTile(
                  title: Text('Toggle Tab'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ToggleTab()));
                    },
                  ),
                ),
              )),
        ]);
  }
}
