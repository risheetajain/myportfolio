import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Drawer/AnimatedDrawer.dart';
import 'package:knowledgeable_content/Drawer/FancyDrawer.dart';
import 'package:knowledgeable_content/Drawer/MultiLevel.dart';
import 'package:knowledgeable_content/Drawer/Slider.dart';

class Drawers extends StatefulWidget {
  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      //   .builder(
      // itemCount: Pages.length,
      // itemBuilder: (context ,inx){
      //   return
      children: [
        //  Padding( padding: EdgeInsets.all(16),
        //   child:Card(
        //     child: ListTile(
        //       title: Text('Animate Drawer'),
        //       trailing: IconButton(
        //         icon: Icon(Icons.arrow_forward_ios),
        //         onPressed: (){
        //           Navigator.push(context,MaterialPageRoute(builder: (context)=>AnimateDrawer()));
        //         },
        //       ),
        //     ),
        //   )),
        Padding(
            padding: EdgeInsets.all(16),
            child: Card(
              child: ListTile(
                title: Text('Fancy Drawer'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FancyDrawer()));
                  },
                ),
              ), //Drawer
            )),
        Padding(
            padding: EdgeInsets.all(16),
            child: Card(
              child: ListTile(
                title: Text('Slider Drawer'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SliderDrawer()));
                  },
                ),
              ),
            )),
        Padding(
            padding: EdgeInsets.all(16),
            child: Card(
              child: ListTile(
                title: Text('Multi Level Drawer'),
                trailing: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MultiLevel()));
                  },
                ),
              ),
            ))
      ],
    );
  }
}
