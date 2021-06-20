import 'package:flutter/material.dart';
import 'package:knowledgeable_content/Apps/Courses%20App/Main1.dart';
import 'package:knowledgeable_content/Apps/E-commerce/Main2.dart';
import 'package:knowledgeable_content/Apps/Food%20Ordering/Main1.dart';
import 'package:knowledgeable_content/Apps/Hostel/Home.dart';
import 'package:knowledgeable_content/BottomBar/BottomBar.dart';
import 'package:knowledgeable_content/Drawer/Drawers.dart';
import 'package:knowledgeable_content/Logins/Login.dart';
import 'package:knowledgeable_content/Apps/Meditation/Main2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:knowledgeable_content/Picker/AllPicker.dart';
import 'package:knowledgeable_content/Picker/Picker.dart';


class Apps extends StatefulWidget {
  @override
  _AppsState createState() => _AppsState();
}

class _AppsState extends State<Apps> {
  List Pages=[ 'Login' ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      //itemCount: Pages.length,
        children:[

          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('Courses Apps'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Main1()));
                    },
                  ),
                ),
              )),
          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('Meditation Apps'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Main2()));
                    },
                  ),
                ),
              )),
          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('E-commerce'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Main12()));
                    },
                  ),
                ),
              )),
          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('Food Ordering'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Main122()));
                    },
                  ),
                ),
              )),
          Padding( padding: EdgeInsets.all(16),
              child:Card(
                child: ListTile(
                  title: Text('Food Ordering'),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>HstlHomePage()));
                    },
                  ),
                ),
              )),
        ]
    );
  }
}
