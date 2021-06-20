import 'package:flutter/material.dart';
import 'package:knowledgeable_content/BottomBar/Animated_navigation_bar.dart';
import 'package:knowledgeable_content/BottomBar/BottomBarOne.dart';
import 'package:knowledgeable_content/BottomBar/Convex_bottom_bar.dart';
import 'package:knowledgeable_content/BottomBar/CustomNavigation.dart';
import 'package:knowledgeable_content/BottomBar/Expandable_bottom_bar.dart';
import 'package:knowledgeable_content/BottomBar/GoogleNavBar.dart';
import 'package:knowledgeable_content/BottomBar/Snake_navigationbar.dart';
import 'package:knowledgeable_content/BottomBar/salomon_bottom_bar.dart';
import 'package:knowledgeable_content/Logins/LoginPageOne.dart';
import 'package:knowledgeable_content/Logins/LoginPageThree.dart';
import 'package:knowledgeable_content/Logins/LoginPageTwo.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List Pages=[ 'LoginPageOne' ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      //   .builder(
      // itemCount: Pages.length,
      // itemBuilder: (context ,inx){
      //   return
      children:[ Padding( padding: EdgeInsets.all(16),
          child:Card(
            child: ListTile(
              title: Text('Bottom Bar 1'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>BottomBarOne()));
                },
              ),
            ),
          )),
        Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Animated Navigation 2'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>BubbleBottom()));
                  },
                ),
              ),
            )),
        Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Convex Bottom bar'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ConvexBottomBar()));
                  },
                ),
              ),
            )), Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Expandable Bottom bar'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>ExpandableBottom()));
                  },
                ),
              ),
            )),
        Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Salomon Bottom bar'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SalomonBottom()));
                  },
                ),
              ),
            )),
        Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Snake Bottom bar'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SnakeNavigationBarExampleScreen()));
                  },
                ),
              ),
            )), Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('CustomNavBar'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>CustomNavBar()));
                  },
                ),
              ),
            )), Padding( padding: EdgeInsets.all(16),
            child:Card(
              child: ListTile(
                title: Text('Google NavBar'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>GoogleNavBar()));
                  },
                ),
              ),
            ))
      ],

    );
  }
}
